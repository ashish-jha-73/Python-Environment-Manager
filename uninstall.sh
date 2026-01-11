#!/usr/bin/env bash
set -e

INSTALL_DIR="$HOME/.ikshvaku"
BIN_DIR="$HOME/.local/bin"
BASHRC="$HOME/.bashrc"
SELF_PATH="$(realpath "$0")"

GREEN='\033[0;32m'
RED='\033[0;31m'
RESET='\033[0m'

printf ":: Uninstalling Ikshvaku...\n"

if [[ -f "$BASHRC" ]]; then
  sed -i '/ikshvaku\/ikshvaku\.sh/d' "$BASHRC"
  sed -i '/ikshvaku\/completion\.sh/d' "$BASHRC"
fi

rm -rf "$INSTALL_DIR"
rm -rf "$HOME/.Python-Env"
rm -f "$BIN_DIR/ikshvaku-uninstall"

printf "${GREEN}:: Files removed${RESET}\n"

rm -f "$SELF_PATH"

printf "${GREEN}:: Uninstalled successfully${RESET}\n"
printf "${GREEN}:: Restart your shell to apply changes${RESET}\n"
printf "${GREEN}:: To report any problem, raise an issue at:${RESET}\n"
printf "${GREEN}:: https://github.com/ashish-jha-73/Python-Environment-Manager${RESET}\n"

