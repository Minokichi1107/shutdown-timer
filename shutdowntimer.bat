@echo off
rem shutdown_timer.bat
rem 指定した分後にPCをシャットダウンします

setlocal

set /p minutes=シャットダウンまでの分数を入力してください: 

if "%minutes%"=="" (
  echo 入力がありません。中止します。
  pause
  exit /b
)

set /a total_seconds=%minutes% * 60

shutdown /s /t %total_seconds%
