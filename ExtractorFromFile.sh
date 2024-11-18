#!/bin/bash

#sed is a stream editor. A stream editor is used to perform basic text transformations on an input stream (a file or input from a pipeline). While in some ways similar to an editor which permits scripted edits (such as ed), sed works by making only one pass over the input(s), and is consequently more efficient. But it is sed’s ability to filter text in a pipeline which particularly distinguishes it from other types of editors. 

#Arguments have been given
if [ $# -ne 2 ]; then
    echo "Usage: $0 input_file output_file"
    exit 1
fi

input_file=$1
output_file=$2

#Input file exists
if [ ! -f "$input_file" ]; then
    echo "Input file not found: $input_file"
    exit 1
fi

sed -n '/ERROR/p' $input_file > $output_file
