#!/bin/bash

for char in {a..z}; do
	for file in files/$char*; do
		mv "$file" "$char/"
	done
done

for char in {A..Z}; do
	echo $char
	lowerchar="${char,,}"
	for file in files/$char*; do
		mv "$file" "$lowerchar/"
	done
done
