#!/bin/bash

echo "Start file rename"

image_extensions=".jpg .jpeg .png .gif"

for file in /Users/kabuk-gwangsoo/vc/*; do
	if [[ -f "$file" ]]; then
		extension="${file##*.}"
	
		if [[ $image_extensions =~ $extension ]]; then
			newname="$(openssl rand -hex 10).$extension"
			echo "Renaming $file to $newname"
			mv "$file" "$newname"
		fi
	fi
done

echo "Done"
