#!/usr/bin/env bash
set -0 errexit

poetry install --no-root
poetry add dj-database-url

python manage.py migrate

python manage.py createsuperuser --noinput

python manage.py collectstatic