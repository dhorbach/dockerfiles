#!/bin/sh

set -e

: ${DPI:=300}

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
    TIFF_1|PNG_1|PDF_*)
	convert -monochrome -density "$DPI" "$input" "$tmp_file_tiff"
	input="$tmp_file_tiff";;
esac

${0%/*}/wf_tesseract "$input" > "$output"
