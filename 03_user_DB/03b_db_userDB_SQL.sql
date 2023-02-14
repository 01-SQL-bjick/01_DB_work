/* USER-Tabelle Version 2 */

DROP TABLE IF EXISTS boo.users;

CREATE TABLE IF NOT EXISTS boo.users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(20) NOT NULL UNIQUE,
    userPwd VARCHAR(40) NOT NULL,
    familyName VARCHAR(20) NOT NULL,
    firstName VARCHAR(20) NOT NULL
);

/* Struktur */
DESCRIBE boo.users;

/* Daten */
INSERT INTO boo.users(id,userName,firstName,familyName,userPwd)
VALUES(DEFAULT,"max","Max","Mütze","1234");
INSERT INTO boo.users(id,userName,firstName,familyName,userPwd)
VALUES(DEFAULT,"maxine","Maxine","Mützerich","#7xD0");
INSERT INTO boo.users(id,userName,firstName,familyName,userPwd)
VALUES(DEFAULT,"maxl","Max","Mützerich","user1234");

/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM boo.users;