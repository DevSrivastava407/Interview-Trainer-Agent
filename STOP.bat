@echo off
title Stopping Interview Trainer Agent
color 4F
cls

echo.
echo  ============================================
echo    Stopping Interview Trainer Agent...
echo  ============================================
echo.

:: Kill processes on ports 3000 and 5000
echo  Stopping backend  (port 5000)...
for /f "tokens=5" %%a in ('netstat -aon ^| findstr ":5000 "') do (
    taskkill /PID %%a /F >nul 2>&1
)

echo  Stopping frontend (port 3000)...
for /f "tokens=5" %%a in ('netstat -aon ^| findstr ":3000 "') do (
    taskkill /PID %%a /F >nul 2>&1
)

echo.
echo  All servers stopped.
echo  ============================================
echo.
timeout /t 2 /nobreak >nul
