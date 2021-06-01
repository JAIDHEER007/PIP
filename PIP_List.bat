@echo off
cls
TITLE pip list
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

pip list

:END
pause