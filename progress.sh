#!/bin/bash

if [[ -f "./log_analyzing" ]]; then
    chmod +x ./log_analyzing
    ./log_analyzing &
    DEPLOY_PID=$!
else
    echo "Error: analyzer file not found."
    exit 1
fi

echo -n "analyzing: ["
for i in {1..20}; do
    echo -n "#"
    sleep 0.5
done
echo "] 100% Complete"

wait $DEPLOY_PID
echo "Process finished successfully."
