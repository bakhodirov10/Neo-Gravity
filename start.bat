@echo off
cd /d "%~dp0"
echo Starting Headroom Proxy...
.venv\Scripts\headroom.exe proxy --port 8787
