# zsh-setup

Personal ZSH and Starship configuration.

## Contents

| File | Purpose |
|------|---------|
| `zshrc` | ZSH configuration (Oh-My-Zsh + plugins + Starship) |
| `.config/starship.toml` | Starship prompt theme |

## Quick start

```bash
git clone <repo-url> ~/Dev/zsh-setup
cd ~/Dev/zsh-setup
./install.sh
```

This symlinks the config files into your home directory:

- `~/zshrc` ← `./zshrc`
- `~/.config/starship.toml` ← `./.config/starship.toml`

## Dependencies

- [zsh](https://www.zsh.org/) (default shell on macOS)
- [Oh-My-Zsh](https://ohmyz.sh/) — framework
- [Starship](https://starship.rs/) — prompt (v1.25+)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting) — plugin
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) — plugin

Install via Homebrew:

```bash
brew install starship
```

Oh-My-Zsh and plugins are managed via the `~/.oh-my-zsh` custom directory.
