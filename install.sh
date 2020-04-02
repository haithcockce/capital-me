#!/bin/bash

source config

# Setup postgres

podman build -t "$CM_CONTAINER_POSTGRES_TAG" postgres/
podman run -it \
	--name "$CM_CONTAINER_POSTGRES_NAME" \
       	-v "$CM_CONTAINER_POSTGRES_VOLUME":"$CM_PGDATA" \
	-d --rm \
	"$CM_CONTAINER_POSTGRES_TAG"

podman build -t "$CM_CONTAINER_DJANGO_TAG" django-gunicorn/
podman run -it \
	--name "$CM_CONTAINER_DJANGO_NAME" \
	-v "$CM_CONTAINER_DJANGO_VOLUME":"$CM_DJANGO_ROOT_DIR" \
	-d "$CM_CONTAINER_DJANGO_TAG" 
