DROP DATABASE IF EXISTS eslibre;
CREATE DATABASE eslibre;

DROP DATABASE IF EXISTS eslibre_org;
CREATE DATABASE eslibre_org;

CREATE TABLE eslibre.schedule (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    time DATETIME NOT NULL,
    title VARCHAR(100) NOT NULL,
    info TEXT NOT NULL
);

CREATE TABLE eslibre.faq (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    info TEXT NOT NULL
);

CREATE TABLE eslibre_org.member (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL
);

INSERT INTO eslibre.schedule (time, title, info) VALUES ('2020-01-01 00:00:00', "Talk 1", "Talk content 1");
INSERT INTO eslibre.schedule (time, title, info) VALUES ('2020-01-01 00:00:00', "Talk 2", "Talk content 2");
INSERT INTO eslibre.schedule (time, title, info) VALUES ('2020-01-01 00:00:00', "Talk 3", "Talk content 3");
INSERT INTO eslibre.schedule (time, title, info) VALUES ('2020-01-01 00:00:00', "Talk 4", "Talk content 4");
INSERT INTO eslibre.schedule (time, title, info) VALUES ('2020-01-01 00:00:00', "Talk 5", "Talk content 5");
INSERT INTO eslibre.schedule (time, title, info) VALUES ('2020-01-01 00:00:00', "Talk 6", "Talk content 6");
INSERT INTO eslibre.schedule (time, title, info) VALUES ('2020-01-01 00:00:00', "Talk 7", "Talk content 7");

INSERT INTO eslibre.faq (title, info) VALUES ("Non so obvious thing 1", "Useful info 1");
INSERT INTO eslibre.faq (title, info) VALUES ("Non so obvious thing 2", "Useful info 2");
INSERT INTO eslibre.faq (title, info) VALUES ("Non so obvious thing 3", "Useful info 3");
INSERT INTO eslibre.faq (title, info) VALUES ("Non so obvious thing 4", "Useful info 4");
INSERT INTO eslibre.faq (title, info) VALUES ("Non so obvious thing 5", "Useful info 5");
INSERT INTO eslibre.faq (title, info) VALUES ("Non so obvious thing 6", "Useful info 6");
INSERT INTO eslibre.faq (title, info) VALUES ("Non so obvious thing 7", "Useful info 7");

INSERT INTO eslibre_org.member (name, email) VALUES ("member1", "member1@email.com");
INSERT INTO eslibre_org.member (name, email) VALUES ("member2", "member2@email.com");

