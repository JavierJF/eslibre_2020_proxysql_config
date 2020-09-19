update mysql_query_rules set active=0 where rule_id=2 or rule_id=1;
delete from mysql_query_rules where rule_id >= 3;

insert into mysql_query_rules
  (rule_id,  username, destination_hostgroup,  schemaname , active, retries, apply, match_digest) values
  (   3   , 'proxysql',         1           ,     NULL    ,   1   ,    3   ,   1  , 'SELECT .*. FROM eslibre\.schedule.*');

insert into mysql_query_rules
  (rule_id,  username, destination_hostgroup, schemaname , active, retries, apply, match_digest) values
  (   4   , 'proxysql',         0           ,     NULL   ,   1   ,    3   ,   1  , 'SELECT .*. FROM eslibre\.faq.*');

insert into mysql_query_rules
  (rule_id,  username ,  schemaname , active, apply,    match_digest     , error_msg) values
  (   5   , 'proxysql',  'eslibre'  ,   1   ,   1  , '^(INSERT|UPDATE).*', "User not allowed to modify 'eslibre' schema");

insert into mysql_query_rules
  (rule_id,  username , active, retries, apply, flagOUT) values
  (   6   , 'proxysql',    1  ,    3   ,   0  ,    10  );

insert into mysql_query_rules
  (rule_id,  schemaname  , active , apply, match_digest , error_msg) values
  (   7   , 'eslibre_org',    1   ,  1   ,    '.*'      , "Regular user not allowed 'eslibre_org' schema");

insert into mysql_query_rules
  (rule_id, active , apply,   match_digest     , error_msg) values
  (   8   ,    1   ,  1   , '.*eslibre_org\..*', "Regular user not allowed 'eslibre_org' schema");

insert into mysql_query_rules
  (rule_id,  username , destination_hostgroup , active , retries , apply, flagIN) values
  (   10  , 'proxysql',         1             ,    1   ,    3    ,   1  , 10    );

LOAD MYSQL QUERY RULES TO RUNTIME;
