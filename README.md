# Python-Environment-Manager

A minimal Bash-based Python virtual environment manager.

## Features
- Create, activate, deactivate Python `venv`
- List and remove environments
- Centralized env storage (`~/.Python-Env`)
- Tab completion for commands and env names
- Clean shell prompt integration

## Usage

```bash
ikshvaku list
ikshvaku create <env_name>
ikshvaku activate <env_name>
ikshvaku deactivate
ikshvaku remove <env_name>
```

## Requirements
- Bash
- Python 3 (`venv`)

## Install
Add the script to `.bashrc` and reload:
```bash
source ~/.bashrc
```

## License
MIT
