# dotfiles

## 설치 및 실행

### 1. Chezmoi 설치

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

- Shell & CLI: zsh (Oh My Zsh), bash, vim의 핵심 설정 및 커스텀 별칭/함수 포함
- Git: 사용자 정보, 유용한 별칭, 프로젝트 종류별 전역 .gitignore 설정
- Languages: Homebrew를 통한 Node.js (nvm), Python (pyenv), Go, Java, Rust, PHP 런타임 및 SDK 설치

### 설치 애플리케이션

- 유틸리티: iTerm2, Stats, AppCleaner, Rectangle, Keka, IINA, FFmpeg
- 개발 도구: Visual Studio Code, JetBrains Toolbox, Figma, Postman
- 기타: Slack, Zoom

### macOS 최적화

- 시스템: 키보드 반복 속도, Dock 반응 속도, 스크린샷 설정 등 생산성 향상을 위한 최적화
- Finder: 숨김 파일 표시, 경로 막대 활성화 등 개발자 친화적 설정 적용
- 보안 및 편의성: 화면보호기 암호 즉시 요구, 불필요한 자동 수정 기능 비활성화
