#!/usr/bin/env bash
set -e

if [[ $EUID -eq 0 ]]; then
  printf "\033[0;31m❌ Do not run this installer as root\033[0m\n"
  exit 1
fi

INSTALL_DIR="$HOME/.ikshvaku"
BIN_DIR="$HOME/.local/bin"
BASHRC="$HOME/.bashrc"

GREEN='\033[0;32m'
RED='\033[0;31m'
RESET='\033[0m'

printf ":: Installing Ikshvaku...\n"

mkdir -p "$INSTALL_DIR" "$BIN_DIR" "$HOME/.Python-Env"
touch "$BASHRC"

cp -f ikshvaku.sh completion.sh uninstall.sh "$INSTALL_DIR/"
chmod +x "$INSTALL_DIR/uninstall.sh"

ln -sf "$INSTALL_DIR/uninstall.sh" "$BIN_DIR/ikshvaku-uninstall"

if ! grep -q "ikshvaku/ikshvaku.sh" "$BASHRC"; then
  printf "\nsource ~/.ikshvaku/ikshvaku.sh\n" >> "$BASHRC"
  printf "source ~/.ikshvaku/completion.sh\n" >> "$BASHRC"
fi


printf "${GREEN}:: Installed successfully${RESET}\n"
printf "${GREEN}:: Restart your shell or run: source ~/.bashrc${RESET}\n"
printf "${GREEN}:: To support us, click here:${RESET}\n"
printf "${GREEN}:: https://github.com/ashish-jha-73/Python-Environment-Manager${RESET}\n"
printf "${GREEN}:: Installation is complete. You may now safely delete the Python-Environment-Manager directory.${RESET}\n"
printf "${GREEN}:: Ikshvaku is very lightweight, so you can safely ignore it when not in use.${RESET}\n"
printf "${GREEN}:: If you ever want to remove Ikshvaku, run: ikshvaku-uninstall${RESET}\n"

