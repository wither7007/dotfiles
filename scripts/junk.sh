#!/bin/bash
if [[ -p /dev/stdin ]]; then
    while IFS= read -r LINE; do
        # echo "line: $LINE"
        pipearray+=( "$LINE")
    done
fi
echo ${pipearray[@]}