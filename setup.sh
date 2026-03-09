#!/bin/bash
# Setup script for Museum Recommendation Engine

set -e

echo "=== Museum Recommendation Engine Setup ==="
echo ""

# Check if uv is installed
if ! command -v uv &> /dev/null; then
    echo "Error: uv is not installed."
    echo "Install it with: curl -LsSf https://astral.sh/uv/install.sh | sh"
    exit 1
fi

echo "1. Creating virtual environment..."
uv venv

echo ""
echo "2. Installing dependencies..."
uv pip install -r pyproject.toml

echo ""
echo "Note: The sentence-camembert-large model (~1.3GB) will be downloaded"
echo "automatically on first run of the notebook."

echo ""
echo "=== Setup complete! ==="
echo ""
echo "To activate the environment:"
echo "  source .venv/bin/activate"
echo ""
echo "To run the notebook:"
echo "  source .venv/bin/activate && jupyter notebook notebook.ipynb"
echo ""
echo "Or with uv:"
echo "  uv run jupyter notebook notebook.ipynb"
