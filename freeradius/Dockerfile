ARG BUILD_FROM=ghcr.io/hassio-addons/base:14.3.1
FROM ${BUILD_FROM}

# Install dependencies
RUN apk add --no-cache freeradius freeradius-radclient

# Copy configuration files
COPY config/ /etc/freeradius/

# Start script
COPY run.sh /usr/bin/run.sh
RUN chmod a+x /usr/bin/run.sh

CMD ["/usr/bin/run.sh"]
