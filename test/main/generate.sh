#!/bin/bash

src_files=("src/stlite/algorithm.h"
	"src/stlite/hash_table.h"
	"src/stlite/list.h"
	"src/stlite/vector.h"
	"src/file/DataBase.h"
	"src/cache/memory.h"
	"src/cache/file.h"
	"src/bpt.h"
	"test/main/main.cpp")

echo "">tmp.cpp
for file in ${src_files[@]}
do
	echo "$file"
	cat "../../$file" | sed -E "s/#include \".*\"//g" | sed "s/#pragma once//g" >>tmp.cpp
	echo "">>tmp.cpp
done
