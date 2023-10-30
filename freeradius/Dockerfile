FROM ghcr.io/hassio-addons/base:14.3.1

# Install dependencies
RUN apk add --no-cache freeradius

# Copy configuration files
COPY config/ /etc/freeradius/

# Start script
COPY run.sh /usr/bin/run.sh
RUN chmod a+x /usr/bin/run.sh

CMD [ "/usr/bin/run.sh" ]
