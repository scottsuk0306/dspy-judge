#!/bin/bash

# Prompt user for project name and Python version
read -p "Enter project name: " project_name
read -p "Enter Python version (e.g., 3.11): " python_version

# Create conda environment
echo "Creating conda environment '$project_name' with Python $python_version..."
conda create -n "$project_name" python="$python_version" -y

# Activate the conda environment
echo "Activating conda environment '$project_name'..."
source "$HOME/miniconda3/etc/profile.d/conda.sh"
conda activate "$project_name"

# Install libraries using python -m pip
echo "Installing black and isort..."
python -m pip install black isort ipython pandas matplotlib python-dotenv

echo "Setup complete! Your conda environment '$project_name' is ready."
echo "To activate this environment, use: conda activate $project_name"