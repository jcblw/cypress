#!/bin/bash

for cmd in "$@"; do
    echo "Running cypress '$cmd'..."
    if $(npm bin)/cypress "$cmd"; then
        # no op
        echo "Successfully ran cypress '$cmd'"
    else
        exit_code=$?
        echo "Failure running cypress '$cmd', exited with $exit_code"
        exit $exit_code
    fi
done
