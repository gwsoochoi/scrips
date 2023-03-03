#!/bin/bash

echo "Start file rename"
for fN in $(ls $PWD *.jpg *.png *.jpeg | tr ' ' '_'); do
	mv `$fN | tr '_' ' '` `$fN | tr ' ' '_'`
done

for fname in $(ls *.jpg *.png *.jpeg); do
	pwgen=$(pwgen 30)
	mv ${fname} | tr '_' ' ' ${pwgen}.${fname##*.};
done
echo "Done"
