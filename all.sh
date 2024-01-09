#!/usr/bin/env bash

GIT_ROOT=$(git rev-parse --show-toplevel)
cd "$GIT_ROOT" || exit 1

if [ ! -f .python-version ]; then
  ln -s .python-version-default .python-version
fi

pip install pre-commit && python -m pre-commit install

python -m pip install -e . -vv
