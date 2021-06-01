@echo off
cls
TITLE pip update
pip --version > NUL 2>&1
if errorlevel 1 (
    echo pip is not Present
    goto end
)
python --version > NUL 2>&1
if errorlevel 1 (
    echo Python is not Present
    goto end
)

python -m pip install --upgrade pip

:END
pause