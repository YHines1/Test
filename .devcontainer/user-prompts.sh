#!/bin/bash

# Prompt user for project name
read -p "Enter the name of the project: " project_name
export PROJECT_NAME=$project_name

# Output gathered information
echo "Project Name: $PROJECT_NAME"

# Prompt user for Azure DevOps repository URL
read -p "Enter the Azure DevOps repository URL: " repo_url

# Prompt user for Azure DevOps Personal Access Token (PAT)
read -p "Enter your Azure DevOps Personal Access Token (PAT): " pat

mkdir /workspace 

# Clone the repository
git clone $repo_url /workspace
