@echo off
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (
 echo Please install Node.js first, then run this file again.
 pause
 exit /b 1
)
start "" "http://localhost:5173"
node serve.mjs
pause
