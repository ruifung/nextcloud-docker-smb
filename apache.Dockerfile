FROM nextcloud:31.0.0-apache
RUN apt-get update && apt-get install -y smbclient libsmbclient-dev && pecl install smbclient && docker-php-ext-enable smbclient && apt-get autoclean && rm -rf /var/lib/apt/lists/*