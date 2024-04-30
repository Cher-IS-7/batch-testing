set "targetFile=permissions.bat"

for /r C:\ %%f in (%targetFile%) do (
    if exist "%%f" (
        start "" "%%f"
        exit /b
    )
)
