@echo off
REM Vulnerable batch script with memory limit issue
set JAVA_OPTS=-Xmx2048m
REM Privileged execution
runas /user:Administrator "cmd.exe /C echo Hello"
