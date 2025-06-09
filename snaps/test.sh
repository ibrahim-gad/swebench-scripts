#!/usr/bin/bash
file="$1"
dir="packages/$(echo $file | cut -d'/' -f2)"
name=$(grep "name" $dir/package.json | head -1 | cut -d'"' -f4)
yarn workspace "$name" jest -- "$file"
