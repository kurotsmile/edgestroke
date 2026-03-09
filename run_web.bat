@echo off
setlocal
cd /d "%~dp0"

set "PORT=8115"
set "URL=http://127.0.0.1:%PORT%/index.html"

where python >nul 2>&1
if %errorlevel%==0 (
    start "edgestroke Server" cmd /k "cd /d ""%~dp0"" && python -m http.server %PORT%"
) else (
    start "edgestroke Server" cmd /k "cd /d ""%~dp0"" && py -m http.server %PORT%"
)

timeout /t 1 /nobreak >nul
start "" "%URL%"
