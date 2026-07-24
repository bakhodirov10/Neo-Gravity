@echo off
cd /d "%~dp0"

if not exist ".venv\Scripts\headroom.exe" (
    echo [ERROR] headroom.exe not found in .venv\Scripts\
    echo Please run: pip install "headroom-ai[all]" or uv sync
    pause
    exit /b 1
)

echo Starting Headroom Proxy on port 8787...
.venv\Scripts\headroom.exe proxy --port 8787
if errorlevel 1 (
    echo.
    echo [ERROR] Headroom proxy exited with an error.
    pause
)
