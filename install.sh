#!/bin/bash

set -e

echo "Installing os dependencies..."
sudo apt update 
sudo apt install -y ffmpeg

echo "Installing uv..."
curl -LsSf https://astral.sh/uv/install.sh | sh
export PATH="$HOME/.local/bin:$PATH"

echo "Installing project dependencies..."
uv sync

echo "Installing Ollama..."
curl -fsSL https://ollama.com/install.sh | sh
ollama pull functiongemma