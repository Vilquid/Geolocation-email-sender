@echo off
color A

@REM little window
mode con: cols=50 lines=10

@REM execute 4.ps1
powershell.exe -ExecutionPolicy Bypass -File 4.ps1