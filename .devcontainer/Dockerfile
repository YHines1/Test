FROM ubuntu:latest

# Install necessary tools for interactive prompts
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    dialog

# Install Node.js (adjust the version as needed)
RUN apt-get install -y nodejs npm

# Set the working directory
WORKDIR /workspace

# Create a directory for the user-prompts.sh script
RUN mkdir -p /usr/local/bin

# Copy the script for user prompts and repo cloning into the container
COPY user-prompts.sh /usr/local/bin/
COPY clone-repo.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/user-prompts.sh
RUN chmod +x /usr/local/bin/clone-repo.sh

# Run the script to gather user input during the build
RUN /usr/local/bin/user-prompts.sh

# Clone Azure DevOps repo
RUN /usr/local/bin/clone-repo.sh


