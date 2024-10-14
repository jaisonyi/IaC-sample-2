#!/bin/bash
# This is a vulnerable IaC shell script for setting up an environment

# Set environment variables
export DB_HOST="localhost"
export DB_PORT="5432"
export DB_USER="admin"
export DB_PASSWORD="12345"  # Hardcoded password (vulnerability)

# Display the configuration
echo "Database Host: $DB_HOST"
echo "Database Port: $DB_PORT"
echo "Database User: $DB_USER"
echo "Database Password: $DB_PASSWORD"

# Simulate starting a service
echo "Starting the database service..."
# Command to start the database service would go here
