# Laravel Development Environment with Docker

This repository provides a complete Docker-based development environment for Laravel applications using Docker Compose.

## Project Structure
```
Laravel-Development/
├── compose.yml              # Docker Compose configuration
├── .env.example            # Environment variables template
├── README.md               # This file
├── db/
│   └── init.sql           # Database initialization script
├── dockerfiles/
│   ├── apache.dockerfile  # Apache/PHP container configuration
│   └── composer.dockerfile # Composer container configuration
└── scripts/
    ├── artisan-appkey.sh      # Generate Laravel application key
    ├── artisan-migrate.sh     # Run database migrations
    ├── composer-dependencies.sh # Install PHP dependencies
    └── php-pint.sh           # Format code with Laravel Pint
```

### Step 1: Create the Laravel project
First, create the Laravel project using Composer. Make sure to mount a volume from your system to the container, pointing to the directory where the project will be created:
```bash
docker run --rm -it -v PATH:/app -u $(id -u):$(id -g) composer bash
composer create-project laravel/laravel PROJECTNAME "12.*" --prefer-dist
```
or you can try with a single command
```bash
docker run --rm -it -v PATH:/app -u $(id -u):$(id -g) composer create-project laravel/laravel PROJECTNAME "12.*" --prefer-dist
```

### Step 2: Configurate for a local development with docker compose
Fill the enviroment variables on a .env file, use the .env.example as a guide, the most important variable is `APP_SRC_PATH`, this is the path to the project creted with composer on the first step, you can obtain the value for `UID` and `GID` with the comands `id -u` and `id -g`, this is for avoid permission errors.

### Step 3: Start the development environment
Once you have configured your `.env` file, start the Laravel development environment:
```bash
docker compose up -d
```

This will start the following services:
- **Laravel Application**: Accessible at `http://localhost:8080`
- **MariaDB Database**: Running on port `3306`
- **phpMyAdmin**: Accessible at `http://localhost:8090`

### Step 4: Using container tools
For using composer and artisan commands, use the following formats. Always use the `UID` and `GID` variables to avoid permission problems.

#### Manual commands
```bash
# For Artisan commands
docker compose run --rm --user "${UID}:${GID}" artisan <command>

# For Composer commands
docker compose run --rm --user "${UID}:${GID}" composer <command>
```

#### Using the provided scripts
To make development easier, several scripts are provided in the `scripts/` folder:

**1. Install Composer Dependencies**
```bash
./scripts/composer-dependencies.sh
```
This script installs all PHP dependencies defined in your `composer.json` file.

**2. Generate Application Key**
```bash
./scripts/artisan-appkey.sh
```
This script generates a new application key for your Laravel project. Run this after creating a new Laravel project.

**3. Run Database Migrations**
```bash
./scripts/artisan-migrate.sh
```
This script runs all pending database migrations.

**4. Format Code with PHP Pint**
```bash
./scripts/php-pint.sh
```
This script runs Laravel Pint to format your PHP code according to Laravel coding standards.

#### Common development workflow
1. Start the environment: `docker compose up -d`
2. Install dependencies: `./scripts/composer-dependencies.sh`
3. Generate app key: `./scripts/artisan-appkey.sh`
4. Run migrations: `./scripts/artisan-migrate.sh`
5. Access your application at `http://localhost:8080`

#### Additional useful commands
```bash
# Create a new migration
docker compose run --rm --user "${UID}:${GID}" artisan make:migration create_users_table

# Create a new controller
docker compose run --rm --user "${UID}:${GID}" artisan make:controller UserController

# Create a new model
docker compose run --rm --user "${UID}:${GID}" artisan make:model User

# Clear application cache
docker compose run --rm --user "${UID}:${GID}" artisan cache:clear

# Install a new package
docker compose run --rm --user "${UID}:${GID}" composer require vendor/package-name
```

### Step 5: Stopping the environment
To stop all services:
```bash
docker compose down
```

To stop and remove all data (including database):
```bash
docker compose down -v
```

## Troubleshooting

### Permission Issues
If you encounter permission issues, make sure you have set the correct `UID` and `GID` values in your `.env` file:
```bash
# Get your user ID and group ID
id -u  # This gives you the UID
id -g  # This gives you the GID
```

### Database Connection Issues
- Make sure the database service is healthy before running migrations
- Check that your `.env` file has the correct database credentials
- The database host should be `db` (the service name in docker-compose)

### Container Logs
To view logs for debugging:
```bash
# View all services logs
docker compose logs

# View specific service logs
docker compose logs application
docker compose logs db
```

### Making Scripts Executable
If you get permission denied when running scripts, make them executable:
```bash
chmod +x scripts/*.sh
```

## Tips
- Always use the provided scripts for common tasks to maintain consistency
- Keep your Laravel project in a separate folder and reference it via `APP_SRC_PATH`
- Use phpMyAdmin at `http://localhost:8090` for database management
- The application will automatically reload when you make changes to your Laravel code