@echo off

if "%1"=="" goto help

del *.class >nul 2>nul
for /f "delims=" %%i in ('dir /b ^| findstr /i ".*\.java"') do javac "%%i"
java -classpath "tester.jar;%cd%" tester.Main %1
goto :eof

:help
echo "Please provide the class name. For instance: .\run.bat DesignRecipeExamples"