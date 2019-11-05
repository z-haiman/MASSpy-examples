#!/bin/bash

bash_source_dir=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

cp_dir="$bash_source_dir/../examples/Catalytic_Potential/"
rbc_wck_dir="$bash_source_dir/../examples/RBC_WholeCellKinetics/"
sb2_dir="$bash_source_dir/../examples/SB2/"

DIRECTORIES=("$cp_dir" "$rbc_wck_dir" "$sb2_dir")
for directory in "${DIRECTORIES[@]}"; do
    script_dir="$directory/scripts"
    sh $script_dir/copy-and-move-models.sh
done