# github.com/kimchanhyung98/dotfiles

kimchanhyung98 macos dotfiles, managed with [`chezmoi`](https://www.chezmoi.io).

Install them with:

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

```shell
brew install chezmoi
chezmoi init kimchanhyung98
chezmoi apply
```
