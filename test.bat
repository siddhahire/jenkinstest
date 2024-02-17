@echo off

rem Define the path to the HTML file within the Jenkins workspace
set HTML_FILE=C:\Program Files\Jenkins\workspace\NewPipelineGit\index.html

rem Check if the HTML file exists
if not exist "%HTML_FILE%" (
    echo Error: HTML file not found!
    exit /b 1
)

rem Check if the HTML file contains expected content
findstr /c:"<!DOCTYPE html>" "%HTML_FILE%" >nul
if errorlevel 1 (
    echo Error: HTML file does not contain expected content!
    exit /b 1
)

echo HTML file exists and contains expected content.
exit /b 0
