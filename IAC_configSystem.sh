#!/bin/bash
#Criacao de usuarios
echo "Configurando sistema....."
echo "Criando usuários....."
useradd carlos -c "Carlos" -s /bin/bash -p $(openssl passwd -6 senha123)

useradd maria -c "Maria" -s /bin/bash -p $(openssl passwd -6 senha123)

useradd joao -c "Joao" -s /bin/bash -p $(openssl passwd -6 senha123)

echo "Usuários GRP_ADM criados com sucesso!"

useradd debora -c "Debora" -s /bin/bash -p $(openssl passwd -6 senha123)

useradd sebastiana -c "Sebastiana" -s /bin/bash -p $(openssl passwd -6 senha123)

useradd roberto -c "Roberto" -s /bin/bash -p $(openssl passwd -6 senha123)

echo "Usuários GRP_VEN criados com sucesso!"

useradd josefina -c "Josefina" -s /bin/bash -p $(openssl passwd -6 senha123)

useradd amanda -c "Amanda" -s /bin/bash -p $(openssl passwd -6 senha123)

useradd rogerio -c "Rogerio" -s /bin/bash -p $(openssl passwd -6 senha123)

echo "Usuários GRP_SEC criados com sucesso!"
#------------------------------------------------------------------------------
#Criacao dos grupos dos usuários

echo "Criando Grupos........"

groupadd GRP_ADM

echo "Grupo GRP_ADM criado!"

groupadd GRP_VEN

echo "Grupo GRP_VEN criado!"

groupadd GRP_SEC

echo "Grupo GRP_SEC criado!"
#------------------------------------------------------------------------------
#Adicionando usuários aos seus grupos
echo "Adicionando usuários em seus grupos"
usermod -aG GRP_ADM carlos
usermod -aG GRP_ADM maria
usermod -aG GRP_ADM joao

echo "Usuários GRP_ADM adicionados!"

usermod -aG GRP_VEN debora
usermod -aG GRP_VEN sebastiana
usermod -aG GRP_VEN roberto

echo "Usuários GRP_VEN adicionados!"

usermod -aG GRP_SEC josefina
usermod -aG GRP_SEC amanda
usermod -aG GRP_SEC rogerio

echo "Usuários GRP_SEC adicionados!"
#------------------------------------------------------------------------------
#Criando pastas dos grupos
echo "Criando pastas dos grupos....."

mkdir publico

echo "Pasta pública criada!"

mkdir adm

echo "Pasta ADM criada!"

mkdir ven

echo "Pasta VEN criada!"

mkdir sec

echo "Pasta SEC criada!"
#----------------------------------------------------------------------------
#Alterando permissoes

echo "Alterando permissões das pastas de cada grupo...."

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Permissoes alteradas!"
#---------------------------------------------------------------------------