# 直接基于 AIClient-2-API 官方镜像（核心，Render 会直接构建并运行该镜像）
FROM justlikemaki/aiclient-2-api:latest

# 暴露容器内 3000 端口（Render 自动映射公网 HTTPS，无需额外配置）
EXPOSE 3000

# 配置时区（可选，保持和之前一致，不影响启动）
ENV TZ=Asia/Shanghai

# 关键：删除手动 CMD 命令，沿用镜像本身的默认启动命令（已前台运行，适配 Render）
