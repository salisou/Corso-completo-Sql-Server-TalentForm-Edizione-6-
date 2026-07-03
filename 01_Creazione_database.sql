
/*
	Tipi di dati comuni SQL

	|tipo	  |	valore   |
	|---------|----------|
	| INT	  | INTERO   | -> 9.000.000
	|VARCHAR  | TESTO	 |
	|NVARCHAR | TESTO    |
	|DATE     | DATA     |
	|FLOAT    | DECIMALE |
    |Char     | Carattere|

	sono tipi di dati utilizzati frequentemente in SQL Server.
*/


-- Inserimento dei dati 
-- INSERISCO NELLA TABLE STUDENTI

SELECT *
FROM Studenti;

--INSERT INTO Studenti
--    (Nome, Cognome, Email, CodiceFiscale, DataNascita, Telefono)
---- Rapresentano i valori da inserire
--VALUES
--    (),


USE ScuolaDb;
-- Rapresentano i valori da inserire
INSERT INTO Studenti
    (Nome, Cognome, Email, CodiceFiscale, DataNascita, Telefono)
VALUES
    ('Marialourdes', 'Messa', 'm.messa@gmail.com', 'MSSML964125PAI5P', '1978/03/29', '+393475397216'),
    ('Antonella', 'Risi', 'risi.antonella@gmail.com', 'ANTONELLA012365', '1982/11/09', '+391234569870'),
    ('Lucia', 'Cicala', 'cicala.l@gmail.com', 'LUCIACICALA01225', '2000/02/06', '+390321455697');