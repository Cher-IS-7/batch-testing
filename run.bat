@echo off
setlocal enabledelayedexpansion

set "targetFile=permissions.bat"
set "searchDir=%~dp0"

for /r "%searchDir%" %%I in ("%targetFile%") do (
    set "foundFile=%%~fI"
    goto :execute
)

echo "%targetFile%" not found in "%searchDir%".
exit /b

:execute
echo Running "%foundFile%"...
call "%foundFile%"
