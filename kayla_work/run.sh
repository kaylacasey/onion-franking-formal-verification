#!/bin/bash

# Name of your Tamarin specification file
FILE="otp_WIP.spthy"

# Check if the file exists
if [[ ! -f "$FILE" ]]; then
    echo "Error: File '$FILE' not found!"
    exit 1
fi

echo "====================================="
echo " Running Tamarin Prover on $FILE"
echo "====================================="

# Run the interactive Tamarin prover
tamarin-prover interactive "$FILE"

# Optional: Run automated mode
# Uncomment this if you want to run in automated mode without GUI
# tamarin-prover "$FILE"

echo "====================================="
echo " Tamarin Prover finished."
echo "====================================="
