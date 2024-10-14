# Vulnerable Dockerfile with memory limit issue
FROM ubuntu:latest
ENV JAVA_OPTS="-Xmx2048m"

# Privileged execution
USER root
