#!/bin/bash

bash_source_dir=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
sb2_dir="$bash_source_dir/../"
html_dir="$bash_source_dir/../html/"

cd $sb2_dir

jupyter nbconvert --to notebook --execute SB2_*.ipynb  --inplace --ExecutePreprocessor.timeout=-1
jupyter nbconvert --to notebook --execute SB2-Chapter-*.ipynb --inplace --ExecutePreprocessor.timeout=-1

jupyter nbconvert --to html_embed SB2-Chapter-*.ipynb\
 --TagRemovePreprocessor.remove_input_tags='{"remove_cell"}'\
 --output-dir $html_dir