@echo off
cls
TITLE pip list Outdated and Uptodate
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
echo ===================
echo     Up To Date
echo ===================
echo.
pip list --uptodate
echo.

:END
pause