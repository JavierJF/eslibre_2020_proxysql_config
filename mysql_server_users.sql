DROP USER IF EXISTS 'monitor'@'%';
DROP USER IF EXISTS 'proxysql'@'%';
DROP USER IF EXISTS 'proxysql_default'@'%';
DROP USER IF EXISTS 'congress_user'@'%';

CREATE USER 'monitor'@'%' IDENTIFIED WITH mysql_native_password by 'monitor';
GRANT SUPER ON *.* TO 'monitor'@'%';

CREATE USER 'proxysql'@'%' IDENTIFIED WITH mysql_native_password by 'eslibre';
GRANT ALL ON *.* TO 'proxysql'@'%';

CREATE USER 'proxysql_default'@'%' IDENTIFIED WITH mysql_native_password by 'eslibre';
GRANT ALL ON *.* TO 'proxysql_default'@'%';

CREATE USER 'congress_user'@'%' IDENTIFIED WITH mysql_native_password by 'eslibre';
GRANT ALL ON *.* TO 'congress_user'@'%';

FLUSH PRIVILEGES;
