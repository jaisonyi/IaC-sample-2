@echo off
REM This is a vulnerable IaC batch script for setting up an environment

:: Set environment variables
set DB_HOST=localhost
set DB_PORT=5432
set DB_USER=admin
set DB_PASSWORD=12345  REM Hardcoded password (vulnerability)

:: Display the configuration
echo Database Host: %DB_HOST%
echo Database Port: %DB_PORT%
echo Database User: %DB_USER%
echo Database Password: %DB_PASSWORD%

:: Simulate starting a service
echo Starting the database service...
REM Command to start the database service would go here
