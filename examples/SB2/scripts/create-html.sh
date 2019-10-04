#!/bin/bash

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
sb2_dir="$parent_path/../"
html_dir="$parent_path/../html/"

cd $sb2_dir

jupyter nbconvert --to html SB2-Chapter-*.ipynb\
 --TagRemovePreprocessor.remove_input_tags='{"remove_cell"}'\
 --output-dir $html_dir
