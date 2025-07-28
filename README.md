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

### 3. 설치 과정

chezmoi apply 실행 시 다음 순서로 자동 설치됩니다:

1. **패키지 설치** (`run_onchange_install-packages.sh.tmpl`) - Homebrew 및 Brewfile을 통한 모든 패키지/앱 설치
2. **macOS 시스템 설정** (`run_onchange_macos-settings.sh.tmpl`) - Dock, Finder, 키보드 등 최적화
3. **설치 검증** (`run_once_validate-installation.sh`) - 모든 도구가 올바르게 설치되었는지 확인

## 설치 대상

### CLI 도구
- curl, wget, git, tree, gh, awscli

### 프로그래밍 언어
- Node.js, Python 3.12, Go, OpenJDK, Rust, PHP, .NET, SQLite

### 패키지 관리자
- npm (Node.js와 함께 설치), bun, yarn, uv, composer, cargo (Rust와 함께 설치)

### AI 도구
- claude-code, gemini-cli, claude

### 시스템 앱
- iTerm2, Stats, AppCleaner, Rectangle, Keka

### 개발 앱
- Visual Studio Code, JetBrains Toolbox, Figma, Postman, Docker

### 기타 앱
- IINA, Slack, Zoom

### Shell 환경
- Oh My Zsh + 플러그인 (autosuggestions, syntax-highlighting)

### macOS 설정
- 키보드, Finder, Dock 최적화
