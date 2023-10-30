#!/bin/bash
set -e

# Voeg een logregel toe om te controleren of het script wordt uitgevoerd
echo "run.sh started"

exec /usr/sbin/freeradius -f
