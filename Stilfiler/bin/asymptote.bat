@echo off
SETLOCAL

SET AsyPATH=C:\Program Files (x86)\Asymptote
SET PATH=%AsyPATH%;%PATH%

asy.exe %*