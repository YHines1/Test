#!/bin/bash

# Prompt user for project name
read -p "Enter project name: " projectName

# Prompt user for programming language
read -p "Enter programming language: " programmingLanguage

# Prompt user for additional tools and dependencies
read -p "Enter additional tools and dependencies (comma-separated): " additionalTools

# Create a directory with the project name
mkdir -p /workspace/$projectName

# Change into the project directory
cd /workspace/$projectName

# Output information about the selected options
echo "Project Name: $projectName"
echo "Programming Language: $programmingLanguage"
echo "Additional Tools and Dependencies: $additionalTools"

# Now, you can perform any additional setup based on user input
# For example, install specific language or framework dependencies

# Continue with the original entry point (e.g., start a shell)
exec "$@"
