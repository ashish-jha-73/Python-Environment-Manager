#!/usr/bin/env bash

set -e

INSTALL_DIR="$HOME/.ikshvaku"

echo "Installing Ikshvaku..."

mkdir -p "$INSTALL_DIR"

mv ikshvaku.sh "$INSTALL_DIR/"
mv completion.sh "$INSTALL_DIR/"

mkdir -p "$HOME/.Python-Env"

if ! grep -q "ikshvaku.sh" ~/.bashrc; then
    echo "source ~/.ikshvaku/ikshvaku.sh" >> ~/.bashrc
    echo "source ~/.ikshvaku/completion.sh" >> ~/.bashrc
fi

echo ":: Installed successfully"
echo ":: Restart your shell or run: source ~/.bashrc"
