#!/bin/bash

bash_source_dir=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

cp_dir="$bash_source_dir/examples/catalytic_potential/"
rbc_wck_dir="$bash_source_dir/examples/RBC_WholeCellKinetics/"
sb2_dir="$bash_source_dir/examples/SB2/"
test_dir="$bash_source_dir/test_data/"

DIRECTORIES=("$cp_dir" "$rbc_wck_dir" "$sb2_dir" "$test_dir")
for directory_path in "${DIRECTORIES[@]}"; do
    script_dir="$directory_path/scripts"
    sh $script_dir/execute-notebooks.sh
done