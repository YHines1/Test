#!/bin/bash

# Prompt user for Azure DevOps repository URL
read -p "Enter the Azure DevOps repository URL: " repo_url

# Prompt user for Azure DevOps Personal Access Token (PAT)
read -p "Enter your Azure DevOps Personal Access Token (PAT): " pat

# Clone the repository
git clone $repo_url /workspace
