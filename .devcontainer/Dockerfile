FROM ubuntu:latest

# Install necessary tools for interactive prompts
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    dialog

# Install Node.js (adjust the version as needed)
RUN apt-get install -y nodejs npm

# Create a directory for the user-prompts.sh script
RUN mkdir -p /usr/local/bin

# Copy the user-prompts.sh script into the container
COPY user-prompts.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/user-prompts.sh

# Set the working directory
WORKDIR /workspace

# Set the entry point to the user prompts script
ENTRYPOINT ["/usr/local/bin/user-prompts.sh"]
