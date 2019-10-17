#!/bin/bash

bash_source_dir=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
example_model_dir="$bash_source_dir/../models/"
main_model_dir="$bash_source_dir/../../../models/catalytic_potential/"

cd $example_model_dir

install -m 755 -p * $main_model_dir/