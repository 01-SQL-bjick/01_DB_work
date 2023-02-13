/* ------  Strukturen ----- */

/* 	 
	Doppelte DS werden nicht mehr zugelassen
    UNIQUE
*/


/* DB auswählen */
USE boo;

/* Tabelle test löschen, falls vorhanden*/
DROP TABLE IF EXISTS test;

CREATE TABLE IF NOT EXISTS test
(
    name VARCHAR(20) UNIQUE NOT NULL DEFAULT "TBA",
    age INT NOT NULL DEFAULT 0
);

DESCRIBE test;

/* ----- Daten ------- */
INSERT INTO test(name,age) VALUES ("Grizabella",29);
INSERT INTO test(age,name) VALUES (35,"Alonzo");
INSERT INTO test VALUES ();

-- ABER: Doppelte Datensätze werden zugelassen !
INSERT INTO test(age,name) VALUES (35,"Alonzo");
INSERT INTO test(age,name) VALUES (35,"Alonzo");

SELECT * FROM test;