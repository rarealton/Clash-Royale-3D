@echo off
git pull surreal master
git pull hub master

cls
git status

:choice
@echo.
@echo 1. Push
@echo 2. Commit
set /p pushOrCommit="Choice: "

if "%pushOrCommit%" == "1" (
	git push surreal master
	git push hub master
	pause
	exit
)

if not "%pushOrCommit%" == "2" (
@echo Invalid choice
goto choice
)

set /p id="Commit Message: "
git add .
set /p confirm="Commit these changes? Y/N: "
if "%confirm%" == "y" (
	git commit -m "%id%"
	git pa
)
pause