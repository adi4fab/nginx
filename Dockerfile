# Use the official Ubuntu 20.04 as a base image
FROM ubuntu:20.04

# Set the environment variable to non-interactive to avoid prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install NGINX
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Expose port 80 to the outside world
EXPOSE 80

# Copy custom NGINX configuration file if you have one (optional)
# COPY nginx.conf /etc/nginx/nginx.conf

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]

