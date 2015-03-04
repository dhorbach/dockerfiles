#!/bin/bash
EXT=".json"
DIR="$(cd "$(dirname "$0")" && pwd)"
/opt/wftesseract/wf_tesseract $1 &>$2$EXT
