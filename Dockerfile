# 基于官方 Alpine Linux 镜像（轻量，满足 Docker 语法要求）
FROM alpine:latest

# 安装必要依赖（可选，确保容器内基础命令可用）
RUN apk add --no-cache curl

# 暴露端口（和 docker-compose.yml 中的 3000 端口对应）
EXPOSE 3000

# 容器启动命令（留空，由 docker-compose.yml 接管）
CMD ["echo", "Kiro reverse API container started"]
