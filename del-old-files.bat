@echo off
set DIR=%HOMEDRIVE%%HOMEPATH%\Downloads

forfiles /S /P %DIR% /D -60 /M "*.*" /c "cmd /c del /q /f @path"
forfiles /S /P %DIR% /D -60 /c "cmd /c if @isdir==TRUE rmdir/s/q @path"
