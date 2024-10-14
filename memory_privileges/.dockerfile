# Vulnerable Dockerfile with memory limit issue
FROM ubuntu:latest

# Set environment variable with memory limit issue
ENV JAVA_OPTS="-Xmx1024m"  # Reduced memory limit but still vulnerable

# Privileged execution
USER admin  # Still a privileged user

# High file descriptor limit
RUN echo "ulimit -n 65535" >> /etc/environment  # High file descriptor limit
