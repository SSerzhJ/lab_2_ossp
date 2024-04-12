#!/bin/bash

users=("student" "serzh" "admin")

for user in "${users[@]}"; do
    if [ -d "/home/$user" ]; then
        echo "Каталог /home/$user вже існує"
    else

        mkdir "/home/$user"
        adduser -m "$user"
        password=$(openssl eand -base64 12)
        echo "Пароль для користувача $user: $password" > "/home/$user/password.txt"
        ssh-keygen -t rsa -b 4096 -C "$user" -f "/home/$user/.ssh/id_rsa" -N "" -q
        echo "Створено ключ для користувача $user"
    fi
done
