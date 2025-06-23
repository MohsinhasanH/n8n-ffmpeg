FROM n8nio/n8n:latest
USER root

RUN apk add --no-cache \
ffmpeg \
&& npm install -g n8n-nodes-ffmpeg

USER node