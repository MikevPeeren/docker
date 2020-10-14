# Drupal image
FROM drupal:9-apache

# installation
RUN apt-get update && apt-get install -y git

# Cleanup
RUN rm -rf /var/lib/apt/lists/*

# Change workdir
WORKDIR /var/www/html/themes

# Install theme
RUN git clone --branch 8.x-3.x --single-branch --depth 1 https://git.drupal.org/project/bootstrap.git \
    && chown -R www-data:www-data bootstrap

# Change workdir back to default
WORKDIR /var/www/html
