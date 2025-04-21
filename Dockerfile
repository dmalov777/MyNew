FROM docker.n8n.io/n8nio/n8n:latest
USER root
RUN apk add --no-cache ffmpeg curl
RUN chown -R node:node /home/node/.n8n
ENV N8N_PORT=3000
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=http
EXPOSE 3000
USER node
