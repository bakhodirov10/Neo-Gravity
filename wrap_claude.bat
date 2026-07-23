@echo off
cd /d "%~dp0"
echo Wrapping Claude agent with Headroom...
.venv\Scripts\headroom.exe wrap claude
