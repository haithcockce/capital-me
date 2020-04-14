#!/bin/sh

if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for postgres..." >> /backend/logging

    while ! nc -z $SQL_HOST $SQL_PORT; do
      sleep 1
      echo "still waiting..." >> /backend/logging
    done

    echo "PostgreSQL started" >> /backend/logging
fi

python manage.py flush --no-input
python manage.py migrate

exec "$@"

