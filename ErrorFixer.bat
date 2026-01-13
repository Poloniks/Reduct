@echo off
title Reduct PRO - System & Library Repair Tool
color 0e

echo ==================================================
echo       REDUCT PRO - ERROR FIXER (python -m pip)
echo ==================================================
echo.
echo This tool will install all necessary libraries to 
echo fix "Module Not Found" or "Library Missing" errors.
echo.

echo [1/3] Checking Python Installation...
python --version >nul 2>&1
if %errorlevel% neq 0 (
    color 0c
    echo ERROR: Python is not installed on this system!
    echo Solution: Download Python from https://www.python.org/
    echo and make sure to check "Add Python to PATH" during setup.
    pause
    exit
)

echo [2/3] Upgrading Pip (Package Manager)...
python -m pip install --upgrade pip

echo.
echo [3/3] Installing Required Libraries (Please wait)...
echo --------------------------------------------------

:: Installs all required packages via python -m pip
python -m pip install customtkinter yt-dlp Pillow urllib3 requests plyer --upgrade

echo --------------------------------------------------
if %errorlevel% equ 0 (
    color 0a
    echo [+] ALL PACKAGES INSTALLED SUCCESSFULLY! 
    echo [+] You can now restart the Reduct PRO executable.
) else (
    color 0c
    echo [!] An error occurred during installation. 
    echo [!] Please check your internet connection.
)

echo.
pause