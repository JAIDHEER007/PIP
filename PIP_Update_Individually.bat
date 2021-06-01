@echo off
cls
TITLE pip list update individually
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

echo ===================
echo     Outdated
echo ===================
echo.
pip list --outdated
echo.

set /p pkg_name="Enter Package Name: "

pip install --upgrade %pkg_name%

:END
pause