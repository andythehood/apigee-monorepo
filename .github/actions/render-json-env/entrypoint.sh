#!/bin/bash
set -e

TEMPLATE_FILE="$1"
ENV_FILE="$2"
OUTPUT_FILE="$3"

# Load environment variables from .env file
set -o allexport
source "$ENV_FILE"
set +o allexport

# Render YAML using envsubst
envsubst < "$TEMPLATE_FILE" > "$OUTPUT_FILE"
echo "✅ JSON template rendered to $OUTPUT_FILE"



