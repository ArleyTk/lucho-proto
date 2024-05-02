# Usa la imagen oficial de PHP como base
FROM php:latest
# Copia los archivos de la aplicación al contenedor
COPY . /var/www/html
# Indica el directorio de trabajo
WORKDIR /var/www/html
# Expone el puerto 80 para acceder a la aplicación
EXPOSE 81
# Comando para ejecutar la aplicación
CMD ["php", "-S", "0.0.0.0:81"]