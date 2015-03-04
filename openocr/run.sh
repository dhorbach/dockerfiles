#!/bin/bash
DIR="$(cd "$(dirname "$0")" && pwd)"
OUTPUTFILE="$2".json
/opt/wftesseract/wf_tesseract $1 &>$OUTPUTFILE
