@echo off

REM Start py-voter run.bat in a new cmd window
echo Starting the first voter...
cd py-voter
start cmd /k run.bat

REM Move to virt directory and start run.bat in a new cmd window
echo Starting the second voter...
cd ../virt
start cmd /k run.bat

REM Move to js-voter and start run.bat in a new cmd window
echo Starting the third voter...
cd ../js-voter/tests
start cmd /k run.bat

REM Final message
echo All voters are running. Press any key to exit...
pause >nul