#!/bin/bash

source config

# Install pre-requisites

apt install podman

# Setup postgres

podman build -t "$CM_CONTAINER_POSTGRES_TAG" backend/db/
podman run -it \
	--name "$CM_CONTAINER_POSTGRES_NAME" \
       	-v "$CM_CONTAINER_POSTGRES_VOLUME":"$CM_PGDATA" \
	-d --rm \
	"$CM_CONTAINER_POSTGRES_TAG"

