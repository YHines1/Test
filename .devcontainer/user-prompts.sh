#!/bin/bash

# Prompt user for project name
read -p "Enter the name of the project: " project_name
export PROJECT_NAME=$project_name

# Output gathered information
echo "Project Name: $PROJECT_NAME"
