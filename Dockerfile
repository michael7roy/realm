FROM debian:bullseye-slim

COPY realm /usr/bin
COPY realm_config.toml /usr/bin/realm_config.toml
RUN chmod +x /usr/bin/realm

ENTRYPOINT ["/usr/bin/realm", "-c", "/usr/bin/realm_config.toml"]