#!/bin/bash
# Wrapper script to run Alpamayo apps with correct environment

# Activate ar1_venv
source "$(dirname "$0")/ar1_venv/bin/activate"

# Add workzone src to PYTHONPATH
export PYTHONPATH="/home/cvrr/Code/workzone/src:$PYTHONPATH"

# Add ~/.local/bin to PATH for installed scripts
export PATH="$HOME/.local/bin:$PATH"

# Run the alpamayo app with provided arguments
cd /home/cvrr/Code/workzone
python "$@"
