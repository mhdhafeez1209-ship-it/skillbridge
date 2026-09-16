@echo off
title SkillBridge Development Server
echo Starting SkillBridge local server...
echo Serving directory: %~dp0
echo Opening http://localhost:8080 in default browser...
start http://localhost:8080
python -m http.server 8080
pause
