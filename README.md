# Ikshvaku — Python Environment Manager

**Ikshvaku** is a lightweight, Bash-based Python virtual environment manager for Linux.  
It provides a minimal, zero-bloat alternative to tools like `virtualenv`, `pyenv`, and Conda.

Designed for developers who prefer **simplicity, transparency, and control**.

---

## Why Ikshvaku?

Most Python environment tools are either:
- Too heavy (Conda),
- Too complex (pyenv),
- Or scattered across project directories.

**Ikshvaku solves this by:**
- Using only Python’s built-in `venv`
- Centralizing environments in one location
- Integrating cleanly with Bash
- Staying completely lightweight and transparent

No background services. No magic. No lock-in.

---

## Features

- Create, activate, deactivate Python `venv`
- List and remove environments
- Centralized environment storage: `~/.Python-Env`
- Bash tab-completion for commands and environment names
- Clean shell prompt integration
- Pure Bash implementation (very lightweight)
- No internet required after installation

---

## Quick Demo

```bash
ikshvaku create myenv
ikshvaku activate myenv
python --version
ikshvaku deactivate
```

---

## Usage

```bash
ikshvaku list
ikshvaku create <env_name>
ikshvaku activate <env_name>
ikshvaku deactivate
ikshvaku remove <env_name>
```

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

### 3. Make installer executable
```bash
chmod +x install.sh
```

### 4. Run installer
```bash
bash install.sh
```

### 5. Reload shell
```bash
source ~/.bashrc
```

Installation is complete.  
You may now safely remove the `Python-Environment-Manager` directory.

---

## Uninstall

Ikshvaku installs a clean uninstall command:

```bash
ikshvaku-uninstall
```

This removes:
- All Ikshvaku files
- Shell integrations
- Installed symlinks

Your system remains untouched otherwise.

---

## Requirements

- Linux
- Bash
- Python 3 with `venv`

---

## Comparison

| Tool        | Lightweight | Uses system Python | Centralized envs | Bash-first |
|-------------|------------|--------------------|------------------|-----------|
| Ikshvaku    | ✅         | ✅                 | ✅               | ✅        |
| virtualenv  | ⚠️         | ✅                 | ❌               | ⚠️        |
| pyenv       | ❌         | ❌                 | ⚠️               | ❌        |
| Conda       | ❌         | ❌                 | ✅               | ❌        |

---

## Who is this for?

- Linux users who prefer Bash workflows
- Developers who dislike Conda bloat
- Students learning Python environments
- Arch Linux users who value simplicity
- Anyone who wants full transparency

---

## Philosophy

Ikshvaku follows the Unix philosophy:

> Do one thing. Do it well. Stay out of the way.

It does not manage Python versions.  
It simply manages Python environments — cleanly.

---

## Roadmap

- Zsh support
- Fish support
- Documentation site
- Non-interactive mode

---

## Contributing

Contributions are welcome.  
If you find a bug or have an idea, please open an issue.

---

## Support

If Ikshvaku helped you, please ⭐ star the repository.  
It helps others discover the project.

To report issues or suggest improvements:  
https://github.com/ashish-jha-73/Python-Environment-Manager

---

## License

MIT
