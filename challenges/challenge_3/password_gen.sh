#!/bin/bash
show_instructions() {
    echo -e "\e[32mThis is a password generator.\e[0m"
    echo -e "\e[32mPlease enter the length you want for the password.\e[0m"
    echo -e "\e[32mExample usage: ./generate_password.sh 12\e[0m"
}
split_characters() {
    local input="$1"
    local characters=()
    local i

    for ((i = 0; i < ${#input}; i++)); do
        characters+=("${input:i:1}")
    done

    echo "${characters[@]}"
}
generate_password() {
    local length="$1"
    local characters="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^ "
    local password=""

    # Dividir la cadena de caracteres en caracteres individuales
    local char_array=($(split_characters "$characters"))
    local char_count=${#char_array[@]}

    for ((i = 0; i < length; i++)); do
        # Seleccionar un carácter aleatorio de la matriz de caracteres
        random_index=$((RANDOM % char_count))
        password="${password}${char_array[random_index]}"
    done

    echo -e "\e[34mYour password is: $password\e[0m"
}
if [ $# -eq 0 ]; then
    show_instructions
else
    length="$1"
    generate_password "$length"
fi
