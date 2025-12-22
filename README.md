# Ikshvaku Python Environment Manager

A minimal Bash-based Python virtual environment manager.

---

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

---

## Installation

### 1. Clone the repository
```bash
git clone https://github.com/ashish-jha-73/Python-Environment-Manager.git
```

### 2. Enter the repository
```bash
cd Python-Environment-Manager
```

### 3. Make installer Executable
```bash
chmod +x install.sh
```

### 4. Run installer
```bash
bash install.sh
```

### 5. Reload Shell
```bash
source ~/.bashrc
```

---

# Now You are all set !!. If you want you can remove the "Python-Environment-Manager" Directory from your system.

## License
MIT
