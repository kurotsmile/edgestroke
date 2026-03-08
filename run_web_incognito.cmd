@echo off
cd /d %~dp0
start "" /B python -m http.server 8115
timeout /t 2 >nul
start chrome --incognito http://localhost:8115/index.html
