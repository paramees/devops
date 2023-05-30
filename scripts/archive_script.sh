#!/bin/bash

# Папка, в которой нужно искать файлы
directory="/home/S/test/mbarchive"

cd "$directory" || exit

find . -type f -mmin +3 ! -name '*.zip' ! -name '*.tar.gz' -print0 | while IFS= read -r -d '' file; do
filename=$(basename "$file")
archive_name="${filename%.*}.tar.gz"
tar -czvf "$archive_name" "$filename" && rm "$filename"
done
