DELETE FROM mysql_users WHERE password='eslibre';

INSERT INTO mysql_users (username,password) VALUES ('proxysql','eslibre');
INSERT INTO mysql_users (username,password) VALUES ('congress_user','eslibre');
INSERT INTO mysql_users (username,password,default_schema) VALUES ('proxysql_default','eslibre','eslibre');

LOAD MYSQL USERS TO RUNTIME;
