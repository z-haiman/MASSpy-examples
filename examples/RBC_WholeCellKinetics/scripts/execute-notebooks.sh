#!/bin/bash

bash_source_dir=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
example_dir="$bash_source_dir/../"

cd $example_dir

jupyter nbconvert --to notebook --execute *.ipynb  --inplace --ExecutePreprocessor.timeout=-1