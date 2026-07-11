@echo off
title Interview Trainer Agent
color 1F
cls

echo.
echo  ============================================
echo    Interview Trainer Agent — Starting Up
echo  ============================================
echo.

:: Check Node.js
where node >nul 2>&1
if %errorlevel% neq 0 (
    echo  [ERROR] Node.js not found. Install from https://nodejs.org
    pause & exit /b 1
)

:: Install backend deps if needed
if not exist "%~dp0backend\node_modules" (
    echo  Installing backend dependencies...
    pushd "%~dp0backend" & call npm install & popd
)

:: Install frontend deps if needed
if not exist "%~dp0frontend\node_modules" (
    echo  Installing frontend dependencies...
    pushd "%~dp0frontend" & call npm install & popd
)

echo.
echo  [1/2] Launching Backend  ^(http://localhost:5000^)...
start "Interview Trainer — Backend" /D "%~dp0backend" cmd /k "node server.js"

echo  Waiting for backend to start...
timeout /t 3 /nobreak >nul

echo  [2/2] Launching Frontend ^(http://localhost:3000^)...
start "Interview Trainer — Frontend" /D "%~dp0frontend" cmd /k "npm start"

echo.
echo  Both servers are starting!
echo  Your browser will open at http://localhost:3000
echo.
echo  To STOP: close the two server windows, or run STOP.bat
echo  ============================================
echo.
exit
