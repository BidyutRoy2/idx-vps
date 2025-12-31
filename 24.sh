#!/bin/bash

# Clear the screen initially
clear

echo "Starting Live Monitor. Press [CTRL+C] to stop."
echo "------------------------------------------------"

while true
do
    # Print the current timestamp so you know when it last ran
    echo "Last updated: $(date)"
    
    # Execute the docker command
    docker ps
    
    # Print a separator for readability
    echo "------------------------------------------------"
    echo "Next update in 15 minutes..."
    
    # Wait for 15 minutes (15 * 60 seconds = 900)
    sleep 900
done
