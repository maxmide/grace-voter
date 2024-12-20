@echo off

:loop

node example.spec.js

echo Voting stopped. Restarting in 1 min 30 seconds

timeout /t 90 >nul

goto loop
