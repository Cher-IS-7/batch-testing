@echo off
echo Searching for setup.bat...

REM Define common locations where setup.bat might be located
set "common_locations=%userprofile% %programfiles% %programfiles(x86)%"

REM Loop through each common location to find setup.bat
for %%d in (%common_locations%) do (
    if exist "%%d\setup.bat" (
        echo Found setup.bat at "%%d".
        echo Elevating permissions...
        runas /user:Administrator "%%d\setup.bat"
        exit /b
    )
)

echo Unable to find setup.bat in common locations.
pause
