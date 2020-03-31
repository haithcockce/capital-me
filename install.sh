#!/bin/bash

source config

# Setup postgres

podman run -it --name CONTAINER_POSTGRES_NAME \
       	-v CONTAINER_POSTGRES_MOUNT:PGDATA \
       	-e POSTGRES_USER='capital-me' -e POSTGRES_PASSWORD='capital-me' -d --rm postgres

