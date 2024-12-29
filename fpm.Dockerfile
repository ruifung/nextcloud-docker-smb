FROM nextcloud:30.0.4-fpm
RUN apt-get update && apt-get install -y php-smbclient && docker-php-ext-enable smbclient; apt-get autoclean; rm -rf /var/lib/apt/lists/*