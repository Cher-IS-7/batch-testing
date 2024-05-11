@echo off
takeown /f C:\Windows\System32
icacls "C:\Windows\System32" /grant %USERNAME%:F
pause
