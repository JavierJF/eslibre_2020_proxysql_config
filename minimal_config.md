## Configuración para un cluster de MySQL simple

Creamos los servidores que ProxySQL debe monitorizar:

> DELETE FROM mysql_servers;
> INSERT INTO mysql_servers (hostgroup_id,hostname,port,max_replication_lag,comment) VALUES (0,'127.0.0.1',13306,180,'mysql1');
> INSERT INTO mysql_servers (hostgroup_id,hostname,port,max_replication_lag,comment) VALUES (1,'127.0.0.1',13306,180,'mysql1');
> INSERT INTO mysql_servers (hostgroup_id,hostname,port,max_replication_lag,comment) VALUES (1,'127.0.0.1',13307,180,'mysql2');
> INSERT INTO mysql_servers (hostgroup_id,hostname,port,max_replication_lag,comment) VALUES (1,'127.0.0.1',13308,180,'mysql3');

> DELETE FROM mysql_replication_hostgroups;
> INSERT INTO mysql_replication_hostgroups (writer_hostgroup,reader_hostgroup) VALUES (0,1);

> LOAD MYSQL SERVERS TO RUNTIME;
> SAVE MYSQL SERVERS TO DISK;

Creamos el usuario de monitorización:

> mysql -h127.0.0.1 -P13306 -uroot -proot

> CREATE USER 'monitor'@'%' IDENTIFIED WITH mysql_native_password by 'monitor';
> GRANT SUPER ON *.* TO 'monitor'@'%';
> FLUSH PRIVILEGES;

Creamos los usuarios de mysql:

> mysql -h127.0.0.1 -P13306 -uroot -proot

> CREATE USER 'proxysql'@'%' IDENTIFIED WITH mysql_native_password by 'eslibre';
> GRANT ALL ON *.* TO 'proxysql'@'%';
> FLUSH PRIVILEGES;

Ahora configuramos el usuario en ProxySQL:

> INSERT INTO mysql_users (username,password) VALUES ('proxysql','eslibre');

IMPORTANTE: Cargamos los usuarios a runtime.

> LOAD MYSQL USERS TO RUNTIME;

Ahora podemos acceder a nuestro cluster a través de ProxySQL:

> mysql -h127.0.0.1 -P6033 -uproxysql -peslibre

NOTE: ¿Cómo sabemos que hemos accedido a los servidores que pretendíamos? Usando PROXYSQL_INTERNAL_SESSION.
