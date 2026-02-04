# 直接基于 AIClient-2-API 官方镜像（核心：Render 会直接构建并运行这个镜像）
FROM justlikemaki/aiclient-2-api:latest

# 暴露容器内 3000 端口（Render 会自动映射到公网 HTTPS，无需手动端口映射）
EXPOSE 3000

# 配置时区（可选，保持和之前一致）
ENV TZ=Asia/Shanghai

# 容器启动命令（直接启动 AIClient-2-API 服务，前台运行，让 Render 能检测到进程）
CMD ["node", "src/index.js"]
