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

### Shell 설정 파일

- **~/.zshrc**: 기본 zsh 설정 (히스토리, 별칭, 함수)
- **~/.bashrc**: 기본 bash 설정 (히스토리, 별칭, 함수)
- **~/.vimrc**: 기본 vim 설정 (편집기 설정, 키 매핑)
- **~/.gitconfig**: 기본 git 설정 (사용자 정보, 별칭)

### macOS 시스템 설정

- **키보드**: 빠른 키 반복, 길게 누르기 비활성화
- **Finder**: 경로 표시줄, 상태 표시줄, 숨김 파일 표시, 폴더 우선 정렬
- **Dock**: 자동 숨김, 빠른 애니메이션, 최근 앱 숨김
- **스크린샷**: PNG 형식, 그림자 제거, Screenshots 폴더에 저장
- **트랙패드**: 탭하여 클릭 활성화
- **보안**: 화면보호기 해제 시 즉시 암호 요구
- **에너지**: 디스플레이 15분, 시스템 30분 후 절전
- **기타**: 자동 수정 기능들 비활성화, 시스템 사운드 비활성화

### 설치되는 앱

- **iTerm2**: 터미널 앱
- **Stats**: 시스템 모니터링
- **AppCleaner**: 앱 완전 삭제
- **Rectangle**: 윈도우 관리
- **Keka**: 압축 도구
