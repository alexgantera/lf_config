#/usr/bin/env bash
#unset COLORTERM
#bat --color=always "$1"
# case "$1" in
#     *.sh|*.py) bat --color always "$1" ;;
#     *.pdf) pdftotext -l 10 -nopgbrk -q -- "${FILE_PATH}" - 
#             mutool draw -F txt -i -- "${FILE_PATH}" 1-10 
#             exiftool "${FILE_PATH}" 
#             exit 1;;
# esac
case "$1" in
    *.tar*) tar tf "$1";;
    *.zip) unzip -l "$1";;
    *.rar) unrar l "$1";;
    *.7z) 7z l "$1";;
    *.pdf) pdftotext "$1" -;;
    *.sh|*.py|*) bat --color always "$1" ;;
esac
# pdftotext -l 10 -nopgbrk -q -- "${FILE_PATH}" - 
#             mutool draw -F txt -i -- "${FILE_PATH}" 1-10 
#             exiftool "${FILE_PATH}" 
#             exit 1;;
