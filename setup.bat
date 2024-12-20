@echo off

REM Check if Python is installed
python --version >nul 2>&1
IF ERRORLEVEL 1 (
    echo Python is not installed. Installing Python...
    winget install -e --id Python.Python.3
) ELSE (
    echo Python is already installed.
)

echo.

REM Install Playwright
echo Installing Playwright...
python -m pip install --upgrade pip >nul 2>&1
python -m pip install playwright >nul 2>&1

REM Install Playwright browsers
echo Installing Playwright browsers...
python -m playwright install

echo.

REM Install Node.js
echo Checking Node.js installation...
node --version >nul 2>&1
IF ERRORLEVEL 1 (
    echo Node.js is not installed. Installing Node.js...
    winget install -e --id OpenJS.NodeJS
) ELSE (
    echo Node.js is already installed.
)

echo.

REM Move to the virt folder
echo Navigating to virt directory...
cd virt

REM Create a virtual environment
echo Creating virtual environment...
python -m venv myenv

call myenv\Scripts\activate

python -m pip install playwright >nul 2>&1
python -m playwright install

deactivate

echo.

REM Move to the js-voter folder
echo Navigating to js-voter directory...
cd ../js-voter

REM Install npm dependencies
echo Installing npm dependencies...
call npm install

cd ../

echo.

REM Notify the user that setup is complete
echo Setup complete! Everything is installed and ready to go.
echo Press any key to exit...
pause >nul