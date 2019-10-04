#!/bin/bash

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
sb2_dir="$parent_path/../"

cd $sb2_dir

jupyter nbconvert --to notebook --execute SB2_*.ipynb  --inplace
jupyter nbconvert --to notebook --execute SB2-Chapter-*.ipynb --inplace --ExecutePreprocessor.timeout=-1
