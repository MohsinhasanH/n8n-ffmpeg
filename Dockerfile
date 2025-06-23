FROM n8nio/n8n

# Install FFmpeg
USER root
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean

USER node
