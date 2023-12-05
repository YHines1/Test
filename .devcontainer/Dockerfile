FROM ubuntu:latest

# Install necessary tools for interactive prompts
RUN apt-get update && \
    apt-get install -y git && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    dialog

# Install Node.js (adjust the version as needed)
RUN apt-get install -y nodejs npm

# Git credential useHTTPPath
RUN git config --global credential.useHttpPath true

# Set the working directory
WORKDIR /workspace

# Create a directory for the user-prompts.sh script
RUN mkdir -p /usr/local/bin

# Copy the script for user prompts and repo cloning into the container
COPY user-prompts.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/user-prompts.sh


ENTRYPOINT [" /usr/local/bin/user-prompts.sh"]

