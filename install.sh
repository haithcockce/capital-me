#!/bin/bash

source config

# Setup postgres

podman run -it \
	--name "$CM_CONTAINER_POSTGRES_NAME" \
       	-v "$CM_CONTAINER_POSTGRES_VOLUME":"$CM_PGDATA" \
       	-e POSTGRES_USER="$CM_POSTGRES_USER" \
       	-e POSTGRES_PASSWORD="$CM_POSTGRES_PASSWORD" \
	-d --rm \
	postgres

podman build ./django/ -t "$CM_CONTAINER_DJANGO_TAG"
podman run -it \
	--name "$CM_CONTAINER_DJANGO_NAME" \
	-v "$CM_CONTAINER_DJANGO_VOLUME":"$CM_DJANGO_ROOT_DIR"
