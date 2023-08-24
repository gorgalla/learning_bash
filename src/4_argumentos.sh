#!/bin/bash
#programa para ejemplificar el paso de argumentos
usuario=$1
password=$2

echo "El usuario es: $usuario"
echo -e "\nLa contraseña introducida es: $password"
echo -e "\nEl numero de argumentos introducidos es: $#"
echo -e "\nLos parametros enviados son: $*"
