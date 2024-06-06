#!/bin/bash

set -ex

echo "BLADDDDDH"

source $(dirname "$0")/env_setup.sh

setup_lint_env

python3 -m tox -e format
python3 -m tox -e lint
python3 -m tox -e isort
