@echo off
rem shutdown_timer.bat
rem Usage: shutdown_timer.bat 30
rem → 30分後にシャットダウン

setlocal

if "%~1"=="" (
  echo 分数を指定してください。
  echo 例: shutdown_timer.bat 30
  pause
  exit /b
)

set minutes=%~1
set /a total_seconds=minutes * 60

shutdown /s /t %total_seconds%
