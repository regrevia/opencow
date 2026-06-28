# OpenCow Unified Icons

This directory is the single source of truth for OpenCow launcher and desktop icons.

Outputs generated from the master source:

- `master/opencow-cow-o-master.png`: main high-resolution source
- `exports/icon.png`: Tauri desktop bundle source PNG
- `exports/icon.ico`: Windows icon
- `exports/icon.icns`: macOS desktop app icon
- `exports/web-launcher.icns`: macOS web launcher icon

Consumers:

- `apps/desktop/src-tauri/icons/`
- `$HOME/Desktop/OpenCow桌面端.app`
- `$HOME/Desktop/OpenCow网页端.app`

Regenerate with:

```bash
python3 scripts/generate-opencow-icons.py
```
