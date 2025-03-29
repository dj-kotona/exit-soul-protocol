@echo off
setlocal

REM Set the output file path
set "outputFile=%~dp0exit_soul_protocol_status.txt"
set "tempFile=%~dp0temp_file_list.txt"

REM Define the files to include
set "filesToAdd=README.md Makefile LICENSE donate.md build_pdfs.ps1"

REM Find all .tex files under the soulpeace folder and write to a temp file
if exist "soulpeace\" dir /s /b soulpeace\*.tex > "%tempFile%"

REM Find all PDF files in the pdf folder and append to the temp file
if exist "pdf\" dir /s /b pdf\*.pdf >> "%tempFile%"

REM Add Reddit content and stories
if exist "reddit\" dir /s /b reddit\*.txt >> "%tempFile%"
if exist "stories\" dir /s /b stories\*.md >> "%tempFile%"

REM Append the additional files to the temp file
for %%a in (%filesToAdd%) do (
    if exist "%%a" (
        echo %%~fa >> "%tempFile%"
    ) else (
        echo Warning: File not found: %%a
    )
)

REM Clear the output file
if exist "%outputFile%" del "%outputFile%"

REM Add header info to output file
echo # Exit Soul Protocol Project Status > "%outputFile%"
echo Generated on %date% at %time% >> "%outputFile%"
echo ------------------------------------------------------------ >> "%outputFile%"
echo. >> "%outputFile%"

REM Append the content of each file to the output file
for /f "usebackq delims=" %%a in ("%tempFile%") do (
    if exist "%%a" (
        echo. >> "%outputFile%"
        echo ------------------------------------------------------------ >> "%outputFile%"
        echo FILE: %%a >> "%outputFile%"
        echo ------------------------------------------------------------ >> "%outputFile%"
        type "%%a" >> "%outputFile%"
        echo. >> "%outputFile%"
    ) else (
        echo Warning: File not found: %%a
    )
)

REM Get Git status if Git is installed
where git >nul 2>nul
if not errorlevel 1 (
    echo. >> "%outputFile%"
    echo ------------------------------------------------------------ >> "%outputFile%"
    echo GIT STATUS >> "%outputFile%"
    echo ------------------------------------------------------------ >> "%outputFile%"
    git status >> "%outputFile%" 2>&1
    echo. >> "%outputFile%"
    
    echo. >> "%outputFile%"
    echo ------------------------------------------------------------ >> "%outputFile%"
    echo RECENT COMMITS >> "%outputFile%"
    echo ------------------------------------------------------------ >> "%outputFile%"
    git log --max-count=5 --pretty=format:"%%h - %%an, %%ar : %%s" >> "%outputFile%" 2>&1
    echo. >> "%outputFile%"
)

REM Copy to Clipboard (requires clip.exe)
clip < "%outputFile%" 2>nul

REM Optional: Copy to clipboard alternative using PowerShell (if available)
powershell -command "Get-Content '%outputFile%' | Set-Clipboard" 2>nul

REM Clean up the temporary file
if exist "%tempFile%" del "%tempFile%"

echo All Exit Soul Protocol content has been written to %outputFile%
echo.
echo Files included:
echo - LaTeX source files (.tex)
echo - PDF files (if available)
echo - Reddit content
echo - Burnout stories
echo - Project documentation
echo.
echo The content has been copied to your clipboard.
echo.
echo Press any key to continue...
pause >nul
endlocal