@echo off
git pull
git status
set /p id="Commit Message: "
git add .
set /p confirm="Commit these changes? Y/N: "
if "%confirm%" =="y" (
	git commit -m "%id%"
	git push
)

pause