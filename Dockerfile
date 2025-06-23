# Use a Debian-based image so we can install ffmpeg
FROM node:18-bullseye

# Set working directory
WORKDIR /app

# Install FFmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean

# Install n8n
RUN npm install n8n -g

# Create n8n user
RUN useradd -m -s /bin/bash node

# Switch to n8n user
USER node

# Expose default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
