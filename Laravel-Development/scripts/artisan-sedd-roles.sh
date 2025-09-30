#!/usr/bin/bash

docker compose run --rm  --user "${UID}:${GID}" artisan db:seed --class=RolePermissionSeeder