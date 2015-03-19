#!/bin/sh

set -e

: ${DPI:=400}

usage (){
    cat <<'EOF'
usage: wf_ocr [OPTIONS] input output [DPI]
OPTIONS:
  -g           display this help
  -l lang      tesseract languages
EOF
}

export WF_TESSERACT_LANG="eng+fax+dbank+jpm"; # the default

while getopts hl: f; do
    case "$f" in
	'?')
	    exit 1;;
	h)
	    usage
	    exit 0;;
	l)
	    export WF_TESSERACT_LANG="$OPTARG";;
    esac
done
shift `expr $OPTIND - 1`

with_dpi=0
case $# in
    2)
	input="$1"
	output="$2";;
    3)
	input="$1"
	output="$2"
	with_dpi=1
	DPI="$3";;
    *)
	echo 'Invalid number of arguments' 1>&2
	exit 2;;
esac

trap 'rm -f $tmp_file_tiff' 0
tmp_file_tiff="$output.tmp.tiff"

input_type=`file "$input" 2>/dev/null | awk '{print $2; exit}'`
#echo "input_type=$input_type"

case "${input_type}_${with_dpi}" in
    cannot)
	echo 'file(1) failed' 1>&2
	exit 1;;
    TIFF_1|PNG_1|PDF_*)
	convert -monochrome -density "$DPI" "$input" "$tmp_file_tiff"
	input="$tmp_file_tiff";;
    TIFF_0)
	ln "$input" "$tmp_file_tiff"
	input="$tmp_file_tiff";;
esac

${0%/*}/wf_tesseract "$input" > "${output}.json"
