#!/bin/bash
# Vulnerable shell script with memory limit issue
export JAVA_OPTS="-Xmx2048m"

# Privileged execution
sudo su -c "echo Hello"
