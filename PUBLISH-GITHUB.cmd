@echo off
setlocal
cd /d "%~dp0"
where git >nul 2>nul
if errorlevel 1 goto no_git
git rev-parse --is-inside-work-tree >nul 2>nul
if errorlevel 1 goto no_repo
git symbolic-ref --short HEAD | findstr /x "main" >nul
if errorlevel 1 goto wrong_branch
echo Checking GitHub for newer changes...
git fetch origin
if errorlevel 1 goto failed
git merge-base --is-ancestor origin/main HEAD
if errorlevel 1 goto behind
echo.
echo Files to review:
git status --short
git diff --stat HEAD
echo.
echo This will commit ALL changed and new project files, then push to GitHub.
choice /C YN /N /M "Publish these changes? [Y/N]: "
if errorlevel 2 goto cancelled
git add --all
if errorlevel 1 goto failed
git diff --cached --quiet
if not errorlevel 1 goto push
git commit -m "Update training portfolio"
if errorlevel 1 goto failed
:push
git push origin HEAD:main
if errorlevel 1 goto failed
echo.
echo Published to GitHub. GitHub Pages will deploy if account billing allows it.
goto end
:behind
echo.
echo GitHub has changes missing from this PC, or the histories have diverged.
echo Nothing was published. Sync and review the remote changes before retrying.
goto end
:no_git
echo Git is not installed or not available in PATH.
goto end
:no_repo
echo This folder is not connected to a Git repository.
goto end
:wrong_branch
echo Switch to main before using this publisher.
goto end
:failed
echo.
echo Publishing stopped because Git reported an error above.
echo If Git requests authentication, sign in with your own GitHub account.
echo Local commits are kept if a push fails; rerun to retry.
goto end
:cancelled
echo Publish cancelled. Nothing was committed or pushed.
:end
echo.
pause
endlocal
