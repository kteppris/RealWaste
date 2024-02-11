#!/bin/bash

# Install Zsh and setup with desired themes and plugins
sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)" -- \
    -t gnzh \
    -p https://github.com/zsh-users/zsh-autosuggestions \
    -p https://github.com/zsh-users/zsh-completions \
    -p git 

# Configure Git to recognize the repository directory as safe
git config --global --add safe.directory /realwaste

# Install Python dependencies from requirements
pip install -r /realwaste/requirements-docker.txt
