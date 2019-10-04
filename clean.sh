#!/bin/bash

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
masspy_example_package_dir="$parent_path/../"

find $masspy_example_package_dir -type d -regex '.*__pycache__' | xargs rm -rf
find $masspy_example_package_dir -type d -regex '.*ipynb_checkpoints' | xargs rm -rf
