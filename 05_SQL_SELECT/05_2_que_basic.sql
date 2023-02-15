/* QUERIES Basic */

/*
Felder abfragen
Felder kombinieren
Ausgabe beschränken
*/

-- Abfrage aller Spalten der Tab
#SELECT * FROM stocks.ccc;

-- Begrenzung: LIMIT
-- Abfrage eines Feldes oder einer Feld-Kombi m. Umbenennung (Alias)
-- Kombinationen aus mehreren Feldern in neues Feld 
-- hier mit Verknüpfung CONCAT() // String-Fkt.
SELECT
    id,
    ticker AS "SYM",
    price AS "Kurs in $",
    c_name AS Unternehmen,
    #industry Branche,
    CONCAT(sector, " | ", industry) AS "Operation"
FROM stocks.ccc
LIMIT 200,10
#LIMIT 5
;