@echo off
cd /d "%~dp0"

if not exist ".venv\Scripts\headroom.exe" (
    echo [ERROR] headroom.exe not found in .venv\Scripts\
    echo Please run: pip install "headroom-ai[all]" or uv sync
    pause
    exit /b 1
)

echo Wrapping Claude agent with Headroom...
.venv\Scripts\headroom.exe wrap claude
if errorlevel 1 (
    echo.
    echo [ERROR] Headroom wrap exited with an error.
    pause
)
