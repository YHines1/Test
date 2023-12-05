#!/bin/bash

# Prompt user for project name
read -p "Enter project name: " projectName


# Create a directory with the project name
mkdir -p /workspace/$projectName

# Change into the project directory
cd /workspace/$projectName

# Output information about the selected options
echo "Project Name: $projectName"

# Continue with the original entry point (e.g., start a shell)
exec "$@"
