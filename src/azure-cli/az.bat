@echo off
setlocal

SET PYTHONPATH=%~dp0\src;%PYTHONPATH%

IF EXIST "%~dp0\python.exe" (
  "%~dp0\python.exe" -m azure.cli %*
) ELSE (
  python -m azure.cli %*
)
