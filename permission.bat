@echo off
:: Define the path to the batch file to run with admin privileges
set "batchFilePath=%~dp0main.bat"

:: Launch PowerShell to run the batch file as admin
powershell -Command "Start-Process '%batchFilePath%' -Verb RunAs"
