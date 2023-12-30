#!/bin/bash

for file in themes/*.toml; do
    cat "$file" <(echo) global.toml > computed-themes/`basename "$file"`;
done
