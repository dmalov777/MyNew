FROM docker.n8n.io/n8nio/n8n:latest

USER root

RUN apk add --no-cache ffmpeg curl

# Задаем порт, который ожидает Railway
ENV N8N_PORT=3000
ENV N8N_HOST=0.0.0.0

# Прописываем, что контейнер будет слушать этот порт
EXPOSE 3000

# Возвращаем права пользователю node
RUN chown -R node:node /home/node/.n8n
USER node
