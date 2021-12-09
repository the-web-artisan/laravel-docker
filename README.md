# DOCKER FOR A LARAVEL APP

## Description

This docker script is optimized for a development environment and implements the following technologies for a Laravel app:

- Php 7.4
- Nginx
- MySql
- PhpMyadmin
- Mailhog

## STEPS TO BUILD THE APP

1. Set the .env variables

    ```` bash
    #!/bin/bash
    cp .env.example
    ````

2. Build the images

    ````bash
    #!/bin/bash
    docker-compose build
    ````

3. Start containers

    ```` bash
    #!/bin/bash
    docker-compose up -d
    ````

4. Install dependencies inside containser

    ```` bash
    #!/bin/bash
    docker-compose exec app composer install
    ````

5. Set app key

    ```` bash
    #!/bin/bash
    docker-compose exec app php artisan key:generate
    ````

6. Run migrations

    ```` bash
    #!/bin/bash
    docker-compose exec app php artisan migrate
    ````

7. Browse at

    [http://localhost:80](http://localhost:80)

NOTES:

- Enter the main container

```` bash
#!/bin/bash
docker-compose exec app bash
````

### Regards

Roberth Rodriguez,
[Laravel the web artisan](https://www.facebook.com/laravelthewebartisan)
