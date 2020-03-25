FROM php:7.4-cli

RUN apt-get update && apt-get -y install zip unzip

RUN curl -sS https://getcomposer.org/installer | php -- \
--install-dir=/usr/bin --filename=composer && chmod +x /usr/bin/composer 

RUN mkdir /twigcs && cd /twigcs && composer require friendsoftwig/twigcs && ln -s /twigcs/vendor/bin/twigcs /usr/local/bin/twigcs

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]