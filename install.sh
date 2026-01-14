#!/bin/bash

echo "Installing os dependencies..."
sudo apt update 
sudo apt install -y ffmpeg
curl -LsSf https://astral.sh/uv/install.sh | sh
source $HOME/.local/bin/env

echo "Installing project dependencies..."
uv sync

echo "Installing Ollama..."
curl -fsSL https://ollama.com/install.sh | sh
ollama pull functiongemma