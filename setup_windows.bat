@echo off
REM Check if Python is installed
python --version >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo Python is not installed. Please install Python 3.10 or later.
    pause
    exit /b 1
)

REM Create a virtual environment named "venv" if it does not already exist
if not exist "venv\Scripts\activate.bat" (
    echo Creating virtual environment...
    python -m venv venv
)

REM Activate the virtual environment
call venv\Scripts\activate.bat

REM Upgrade pip to the latest version
python -m pip install --upgrade pip

REM Install the required dependencies
echo Installing dependencies...
pip install opencv-python openai==0.28 pyyaml joblib tqdm torch_directml pynvml

echo.
echo Setup is complete.
echo To run AudioBookSlides with GPU optimizations, use the command:
echo     enable_gpu_features.bat [bookname] [audio_file_wildcard_path]
pause