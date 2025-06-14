#!/bin/bash
# Este script solo se usará para el entorno de desarrollo.

# Aborta el script inmediatamente si algún comando falla.
set -e

# Borra el archivo server.pid si existe. Esta es la razón principal por la que creamos este script.
# Así aseguramos que el servidor pueda reiniciar sin problemas.
rm -f /rails/tmp/pids/server.pid

# Finalmente, ejecuta el comando que se le pase como argumento.
# En nuestro caso, será el 'command' que definamos en docker-compose.yml.
# El 'exec "$@"' es la forma estándar de pasar el control.
exec "$@"