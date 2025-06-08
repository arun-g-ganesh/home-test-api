#!/bin/bash

# Create reports directory if not exists
mkdir -p reports

# Timestamp format: YYYY-MM-DD_HH-MM-SS
TIMESTAMP=$(date '+%Y-%m-%d_%H-%M-%S')

# Source and destination
SOURCE_DIR="target/karate-reports"
DEST_FILE="reports/report_$TIMESTAMP.zip"

# Zip the report
if [ -d "$SOURCE_DIR" ]; then
    zip -r "$DEST_FILE" "$SOURCE_DIR" > /dev/null
    echo "Report zipped and saved to $DEST_FILE"
else
    echo "No karate-reports directory found. Did the tests run?"
    exit 1
fi

z+