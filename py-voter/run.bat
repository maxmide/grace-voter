@echo off 
:loop
python voter.py
echo voting stopped. waiting for 1 minute and 30 seconds...
timeout /t 90 >nul
goto loop