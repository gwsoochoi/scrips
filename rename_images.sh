#!/bin/bash

echo "Start file rename"

image_extensions=".jpg .jpeg .png .gif .psd"
count=0
enc="$(openssl rand -hex 10)"

for file in *; do
	if [[ -f "$file" ]]; then
		extension="${file##*.}"
		
		if [[ $image_extensions =~ $extension ]]; then
			newname="$enc$count.$extension"
			echo "Renaming $file to $newname"
			mv "$file" "$newname"
			count=$((count+1))
		fi
	fi
done

echo "Done"
