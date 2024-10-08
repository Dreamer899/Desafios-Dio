#!/bin/bash
echo "Crinado Diretorios"
mkdir /wd
mkdir /adm
mkdir /ven
mkdir /sec
echo "criando grupos de usuarios"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuarios"
useradd User1 -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd User2 -m -s /bin/bash -p $(openssl passwd -crypt senha123)-G GRP_ADM
useradd User3 -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM

useradd User4 -m -s /bin/bash -p $(openssl passwd -crypt senha123)  -G GRP_VEN
useradd User5 -m -s /bin/bash -p $(openssl passwd -crypt senha123)  -G GRP_VEN
useradd User6 -m -s /bin/bash -p $(openssl passwd -crypt senha123)  -G GRP_VEN

useradd User7 -m -s /bin/bash -p $(openssl passwd -crypt senha123) G GRP_SEC
useradd User8 -m -s /bin/bash -p $(openssl passwd -crypt senha123) G GRP_SEC
useradd User9 -m -s /bin/bash -p $(openssl passwd -crypt senha123) G GRP_SEC

echo "Especificando Permissões de diretorio..."

chown root:GRP_ADM/adm
chown root:GRP_VEN/ven
chown root:GRP_SEC/sec
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /wd


echo "fim..."
