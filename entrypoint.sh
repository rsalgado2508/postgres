##Arrancamos la Base de Datos para el procedimiento inicial

/etc/init.d/postgresql start

##Creamos el usuario, la pass y la Base de datos

psql --command "CREATE USER ${USER} WITH SUPERUSER PASSWORD '${PASS}';" 
createdb -O pguser ${BBDD}

##PAramos la instancia

/etc/init.d/postgresql stop

##Arrancamos de forma normal

exec /usr/lib/postgresql/9.3/bin/postgres -D /var/lib/postgresql/9.3/main -c config_file=/etc/postgresql/9.3/main/postgresql.conf
