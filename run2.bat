@echo off
powershell -Command "Start-Process powershell \"-ExecutionPolicy Bypass -NoProfile -NoExit -command "%APPDATA%\text2.ps1"\" -Verb RunAs -WindowStyle hidden