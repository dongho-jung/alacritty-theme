#!/bin/bash

for file in themes/*.yaml; do
  yq eval-all 'select(fileIndex == 0) * select(fileIndex == 1)' global.yaml "$file" > tmpfile && mv tmpfile computed-themes/`basename "$file"`
done
