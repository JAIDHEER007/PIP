@echo off
cls
TITLE pip and py
mode con:cols=50 lines=10
pip --version > NUL 2>&1
if errorlevel 1 (
    echo pip is not Present
)else (
    echo pip is Present
)

python --version > NUL 2>&1
if errorlevel 1 (
    echo Python is not Present
)else (
    echo Python is Present
)

pause