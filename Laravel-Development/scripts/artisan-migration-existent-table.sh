#!/usr/bin/bash

docker compose run --rm  --user "${UID}:${GID}" artisan make:migration update_users_table --table=users