#!/bin/bash

# Copyright 2020 Rigetti & Co, Inc.

set -o errexit
set -o nounset
set -o pipefail

script_directory="$(dirname "$0")"

cd "${script_directory}/../notebooks"

echo
echo "Converting notebooks to test scripts ..."
echo

rm -rf ./__test__ > /dev/null

jupyter nbconvert --output-dir=./__test__ --to script ./quilt/*.ipynb

cd __test__  # we run from inside the test directory so outputs are also inside

for script in *.py; do
    echo
    echo "Running $script ..."
    echo

    python "$script"
done
