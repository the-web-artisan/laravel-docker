FROM nginx:1.19.4

ADD docker-compose/nginx/default.conf /etc/nginx/conf.d/default.conf

RUN apt-get update && apt-get install -y openssl
RUN openssl req -batch -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

# Copy public web files
COPY ./public /var/www/public
