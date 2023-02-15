/* QUERIES Filtern mit WHERE */

/*
    Eingrenzen/Filtern WHERE & AND/OR etc.
    Eingrenzen/Filtern WHERE & LIKE + Parameter
    Eingrenzen/Filtern WHERE & RegEx
    Eingrenzen/Filtern WHERE & IN / NOT IN
    Eingrenzen/Filtern WHERE & BETWEEN / NOT BETWEEN
*/

-- Eingrenzen/Filtern WHERE & AND/OR etc.
-- Scharfe Suche

SELECT
	ticker AS "SYM",
    c_name AS "Unternehmen",
	price AS "Kurs ($)",
    payouts AS "Zahlung p.a.",
    dividend AS "Dividende",
	CONCAT(sector, " | ", industry) AS "Operations"
FROM stocks.ccc

-- Begrenzung
LIMIT 20
;