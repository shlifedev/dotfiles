# dotfiles

## 설치 및 실행

### 1. [Chezmoi](https://www.chezmoi.io) 설치

```bash
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# sh -c "$(curl -fsLS get.chezmoi.io)"

brew install chezmoi
```

### 2. 설정 적용

```bash
chezmoi init https://github.com/kimchanhyung98/dotfiles.git

chezmoi diff  # 변경사항 미리보기
chezmoi apply # 설정 적용
```

## 설정

### 개발 환경

- **언어**: Node.js, Python, Go, Java, Rust, PHP
- **패키지 관리자**: npm, bun, pip, uv, composer, cargo
- **도구**: Git, GitHub CLI, Docker
- **Shell**: zsh (Oh My Zsh + 플러그인), bash, vim

### 앱

- **기본**: iTerm2, Stats, AppCleaner, Rectangle, Keka
- **개발**: VS Code, JetBrains Toolbox, Figma, Postman, Docker
- **AI**: Claude
- **기타**: Slack, Zoom, FFmpeg, IINA

### macOS 설정

- 키보드, Finder, Dock 최적화
