#!/bin/bash

set -e

TEMPLATE="/home/devuser/.template"
WORKSPACE="/workspace"
SAMPLE_PROJECT="sample"

echo "Dev container starting..."

# workspace doesn't exist
if [ ! -d "$WORKSPACE" ]; then
    echo "Workspace not found: $WORKSPACE"
    exit 1
fi

# workspace init
if [ -z "$(ls -A "$WORKSPACE" 2>/dev/null)" ]; then
    echo "Workspace is empty, initializing from template..."
    mkdir -p "$WORKSPACE"/"$SAMPLE_PROJECT"
    cp -r "$TEMPLATE"/* "$WORKSPACE"/"$SAMPLE_PROJECT"/
else
    echo "Workspace already initialized."
fi

cd "$WORKSPACE"/"$SAMPLE_PROJECT"

exec "$@"
