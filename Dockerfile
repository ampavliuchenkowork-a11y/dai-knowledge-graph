FROM mediawiki:1.46.2

RUN apt-get update \
    && apt-get install -y --no-install-recommends libzip-dev git \
    && docker-php-ext-install zip \
    && rm -rf /var/lib/apt/lists/*

COPY --from=composer:2 /usr/bin/composer /usr/local/bin/composer

WORKDIR /var/www/html

RUN printf '{\n  "require": {\n    "mediawiki/semantic-media-wiki": "7.3.1"\n  }\n}\n' > composer.local.json \
    && composer update --no-dev --no-interaction --prefer-dist

RUN cd extensions \
    && git clone --branch 2026.09 --depth 1 https://gerrit.wikimedia.org/r/mediawiki/extensions/Translate.git \
    && git clone --branch 2026.09 --depth 1 https://gerrit.wikimedia.org/r/mediawiki/extensions/UniversalLanguageSelector.git

COPY LocalSettings.php /var/www/html/LocalSettings.php