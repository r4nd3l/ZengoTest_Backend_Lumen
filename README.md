# Lumen Counties and Cities API

A RESTful API for managing counties and their cities built with Lumen.

## Features

-   CRUD operations for cities
-   County management
-   CORS support
-   MySQL database

## Installation

1. Clone the repository
2. Run `composer install`
3. Copy `.env.example` to `.env` and configure
4. Run migrations: `php artisan migrate` and/or import mysql_example_db/localhost.sql file into MySQL
5. Start server: `php -S localhost:3001 -t public`

## API Endpoints

-   `GET /api/counties` - List all counties
-   `POST /api/counties/{id}/cities` - Add city to county

## License

MIT
