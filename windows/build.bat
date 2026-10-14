@echo off
setlocal
cd /d "%~dp0.."
call mvn -B clean package
if errorlevel 1 exit /b %errorlevel%
echo WAR created: target\hello-ci-lab.war
endlocal
