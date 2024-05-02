# Usa la imagen oficial de PHP con Apache
FROM php:latest

# Instala Apache y otras dependencias
RUN apt-get update && apt-get install -y \
    apache2 \
    && rm -rf /var/lib/apt/lists/*

# Habilita módulos de Apache necesarios para PHP
RUN a2enmod rewrite

# Copia los archivos de la aplicación al directorio del servidor web
COPY . /var/www/html

# Cambia los permisos para que Apache pueda leer los archivos
RUN chown -R www-data:www-data /var/www/html

# Expone el puerto 80 para acceder a la aplicación
EXPOSE 80

# Inicia Apache cuando se ejecute el contenedor
CMD ["apache2ctl", "-D", "FOREGROUND"]
