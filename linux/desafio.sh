#!/bin/bash

echo "Criando diretórios......"

su

mkdir /publico /adm /ven /sec

echo "Criando grupos.........."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários........"

useradd carlos -c "Carlos da Silva" -m -G GRP_ADM -p $(openssl passwd -crypt Senha123) -e
useradd maria -c "Maria Andrade" -m -G GRP_ADM -p $(openssl passwd -crypt Senha123) -e
useradd joao -c "João Pereira" -m -G GRP_ADM -p $(openssl passwd -crypt Senha123) -e
useradd debora -c "Debora Santos" -m -G GRP_VEN -p $(openssl passwd -crypt Senha123) -e
useradd sebastiana -c "Sebastiana Gomes" -m -G GRP_VEN -p $(openssl passwd -crypt Senha123) -e
useradd roberto -c "Roberto Gaspar" -m -G GRP_VEN -p $(openssl passwd -crypt Senha123) -e
useradd josefina -c "Josefina Matos" -m -G GRP_SEC -p $(openssl passwd -crypt Senha123) -e
useradd amanda -c "Amanda Souza" -m -G GRP_SEC -p $(openssl passwd -crypt Senha123) -e
useradd rogerio -c "Rogerio Amadeu" -m -G GRP_SEC -p $(openssl passwd -crypt Senha123) -e

echo "Criando acessos.........."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec