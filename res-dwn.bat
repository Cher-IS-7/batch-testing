@echo off
echo Res Downloader

curl -OJL https://raw.githubusercontent.com/Cher-IS-7/batch-testing/main/run.bat
curl -OJL https://raw.githubusercontent.com/Cher-IS-7/batch-testing/main/permission.bat

set "targetFile=run.bat"

for /r C:\ %%f in (%targetFile%) do (
    if exist "%%f" (
        start "" "%%f"
        exit /b
    )
)
