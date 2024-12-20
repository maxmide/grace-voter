@echo off
:loop

docker run --rm playwright-tests

echo Voting stopped. Waiting for 1 minute 30 seconds...

timeout /t 90 >nul

goto loop