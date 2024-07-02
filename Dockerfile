FROM debian:bullseye-slim

COPY realm /usr/bin
COPY realm_config.toml /usr/bin/realm_config.toml
RUN chmod +x /usr/bin/realm

EXPOSE 8000
EXPOSE 21115
EXPOSE 21116
EXPOSE 21117
EXPOSE 21118
EXPOSE 21119

ENTRYPOINT ["/usr/bin/realm", "-c", "/usr/bin/realm_config.toml"]