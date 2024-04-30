@echo off
REM Create a scheduled task to run the script with administrative privileges

REM Define the name and path of the script
set "scriptPath=%~dp0main.bat"
set "taskName=RunMainScript"

REM Create the scheduled task
schtasks /create /tn "%taskName%" /tr "\"%scriptPath%\"" /sc onlogon /rl highest /f

REM Check if the task was created successfully
if %errorlevel% NEQ 0 (
    echo Failed to create the scheduled task. Please run the script as administrator manually.
    pause
    exit /b
)

echo Scheduled task created successfully. The script will run with administrative privileges on user logon.
