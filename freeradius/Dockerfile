# Gebruik een basisimage (bijv. Ubuntu) om op voort te bouwen
FROM ubuntu:20.04

# Voer updates uit en installeer FreeRADIUS
RUN apt-get update && apt-get install -y freeradius

# Kopieer je FreeRADIUS-configuratiebestanden naar de container
COPY radiusd.conf /etc/freeradius/3.0/
COPY clients.conf /etc/freeradius/3.0/
# ... Voeg hier eventuele andere configuratiebestanden toe

# Open poorten die FreeRADIUS nodig heeft (standaard 1812 en 1813)
EXPOSE 1812/udp 1813/udp

# Start FreeRADIUS bij het opstarten van de container
CMD ["freeradius", "-X"]

# Houd de container actief
ENTRYPOINT ["tail", "-f", "/dev/null"]
