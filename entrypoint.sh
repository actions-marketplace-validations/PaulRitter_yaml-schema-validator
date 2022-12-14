#!/bin/bash

if [ -n "$INPUT_YAMALE" ]; then
  pip install yamale~=$INPUT_YAMALE
else
  pip install yamale
fi

if [ -n "$INPUT_VALIDATORS_REQUIREMENTS" ]; then
  pip install -r $INPUT_VALIDATORS_REQUIREMENTS
fi

python3 /app/validate.py