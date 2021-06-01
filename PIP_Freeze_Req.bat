@echo off
cls
TITLE pip list to requirements.txt
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

pip list --format=freeze > requirements.txt

:END
pause