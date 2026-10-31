@echo off
cd /d "%~dp0"

if not exist ".venv\Scripts\python.exe" (
    echo Virtual environment not found. Run setup first.
    pause
    exit /b 1
)

call ".venv\Scripts\activate.bat"

echo Starting OpenMontage Backlot...
python -m backlot open

timeout /t 2 /nobreak >nul
start "" "http://127.0.0.1:4750/"

echo.
echo Backlot is running. Press any key to close this window.
pause
