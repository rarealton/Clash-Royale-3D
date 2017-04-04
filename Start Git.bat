@echo off
git pull origin master
git status
set /p id="Commit Message: "
git add .
set /p confirm="Commit these changes? Y/N: "
if "%confirm%" =="y" (
	git commit -m "%id%"
	git pa
)

pause