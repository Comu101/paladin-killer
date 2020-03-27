@echo off


for /f "delims== tokens=2" %%i in ('WMIC process where "Name='paladin.exe'" get ProcessId /value') do set pid=%%i 
echo Going to kill PID: %pid%
taskkill.exe /PID %pid%