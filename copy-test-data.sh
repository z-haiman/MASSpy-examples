#!/bin/bash

bash_source_dir=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

cp_dir="$bash_source_dir/examples/catalytic_potential/"
rbc_wck_dir="$bash_source_dir/examples/RBC_WholeCellKinetics/"
sb2_dir="$bash_source_dir/examples/SB2/"
test_dir="$bash_source_dir/test_data"

test_model_dir="$test_dir/models"
test_maps_dir="$test_dir/maps"

# Models
cp_models=("Glycolysis.json"\
           "Hemoglobin.json")
cd "$cp_dir/models"
install -m 755 -p ${cp_models[@]} $test_model_dir/

rbc_wck_models=("WholeCellRBC_MM_Rates.json"\
                "WholeCellRBC_MM_Rates.xml"\
                "WholeCellRBC_MA_Rates.json"\
                "WholeCellRBC_MA_Rates.xml")
cd "$rbc_wck_dir/models"
install -m 755 -p ${rbc_wck_models[@]} $test_model_dir/

sb2_models=("textbook.json"\
            "textbook.xml")
cd "$sb2_dir/models"
install -m 755 -p ${sb2_models[@]} $test_model_dir/

# Maps
maps=("glycolysis_hemoglobin_map.json"\
      "phosphate_trafficking_map.json"\
      "simple_toy_map.json")
cd "$bash_source_dir/maps"
install -m 755 -p ${maps[@]} $test_maps_dir/
