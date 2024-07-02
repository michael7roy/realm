FROM debian:bullseye-slim

COPY realm /usr/bin
RUN chmod +x /usr/bin/realm

# 复制配置文件到容器中
COPY realm_config.toml /usr/bin/realm_config.toml

# 设置容器启动命令
ENTRYPOINT ["/usr/bin/realm", "-c", "/usr/bin/realm_config.toml"]