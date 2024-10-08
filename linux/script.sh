#!/bin/bash

# Update the package list and upgrade all installed packages
sudo apt update
sudo apt -y upgrade

# Check Python version
python3 -V

# Install pip for Python 3
sudo apt install -y python3-pip

# Install essential build tools and Python development headers
sudo apt install -y build-essential libssl-dev libffi-dev python3-dev

# Install the Python virtual environment package
sudo apt install -y python3-venv

# Create a virtual environment called my_env
python3 -m venv my_env

# Activate the virtual environment
source my_env/bin/activate

# Install Jupyter Notebook inside the virtual environment
pip install jupyter

# Check if Jupyter Notebook was installed successfully
if [ $? -eq 0 ]; then
  # Print a Jupyter Notebook ASCII logo
  echo "Jupyter Notebook installed successfully!"
  echo "Here's a simple ASCII logo:"
  echo "      @@@      "
  echo "     @   @     "
  echo "    @  $  @    "
  echo "     @   @     "
  echo "      @@@      "
else
  echo "Jupyter Notebook installation failed."
fi

# Run Jupyter Notebook
jupyter notebook
