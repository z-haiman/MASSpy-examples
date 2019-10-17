#!/bin/bash

bash_source_dir=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
example_dir="$bash_source_dir/../"

cd $example_dir

# Must be executed in a certain order
jupyter nbconvert --to notebook --execute Glycolysis.ipynb  --inplace --ExecutePreprocessor.timeout=-1
jupyter nbconvert --to notebook --execute Hemoglobin.ipynb  --inplace --ExecutePreprocessor.timeout=-1
jupyter nbconvert --to notebook --execute HEX1.ipynb  --inplace --ExecutePreprocessor.timeout=-1
jupyter nbconvert --to notebook --execute PFK.ipynb  --inplace --ExecutePreprocessor.timeout=-1
jupyter nbconvert --to notebook --execute PYK.ipynb  --inplace --ExecutePreprocessor.timeout=-1
jupyter nbconvert --to notebook --execute Non-personalized_Model_construction.ipynb --inplace --ExecutePreprocessor.timeout=-1
jupyter nbconvert --to notebook --execute Non-personalized_Model_validation.ipynb --inplace --ExecutePreprocessor.timeout=-1