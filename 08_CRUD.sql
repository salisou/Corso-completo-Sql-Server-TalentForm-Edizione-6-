USE ScuolaDb;

select * from corsi;
select * from Iscrizioni;

insert into Studenti
	(Nome, Cognome, Email, CodiceFiscale, DataNascita, Telefono)
values
	('Nathaly', 'Ornella', 'n.ornella@gmail.com', 'NTOL136569OPE0P', '1988/05/05', '+39325698741')

select * from Studenti where Nome = 'Nathaly'; --> 42


-- Iscrizione di uno studente ad un corso (1 SQL Base, 2 SQL Avanzato)
INSERT INTO Iscrizioni
	(StudenteId, CorsoId, DataIscrizione)
Values
	(42, 1, GETDATE()),	
	(42, 2, GETDATE());

SELECT 
	s.StudenteId,
	s.Nome,
	s.Cognome,
	s.CodiceFiscale,
	c.NomeCorso,
	c.Descrizione
FROM Studenti as s
INNER JOIN Iscrizioni as i
	ON s.StudenteId = i.StudenteId
INNER JOIN Corsi as c
	ON i.CorsoId = c.CorsoId
-- where s.StudenteId = 42;

SELECT 
	s.StudenteId,
	s.Nome,
	s.Cognome,
	s.CodiceFiscale,
	ISNULL(CONVERT(NVARCHAR, s.DataNascita, 105), 'N/D') AS DataNascita,
	ISNULL(c.NomeCorso, 'N/S') AS NomeCorso,
	ISNULL(c.Descrizione, 'N/S') AS Descrizione
FROM Studenti as s
LEFT JOIN Iscrizioni as i
	ON s.StudenteId = i.StudenteId
LEFT JOIN Corsi as c
	ON i.CorsoId = c.CorsoId
WHERE c.NomeCorso is null; 



SELECT 
	s.StudenteId,
	s.Nome,
	s.Cognome,
	s.CodiceFiscale,
	ISNULL(CONVERT(NVARCHAR, i.DataIscrizione, 105), GetDate()) as DataIscrizione,
	ISNULL(CONVERT(NVARCHAR, s.DataNascita, 109), 'N/D') AS DataNascita,
	ISNULL(CONVERT(NVARCHAR, YEAR(s.DataNascita), 100), 'N/D') AS Anno,
	ISNULL(CONVERT(NVARCHAR, MONTH(s.DataNascita), 100), 'N/D') AS Mese,
	ISNULL(CONVERT(NVARCHAR, DAY(s.DataNascita), 100), 'N/D') AS Giorno,
	ISNULL(c.NomeCorso, 'N/S') AS NomeCorso,
	ISNULL(c.Descrizione, 'N/S') AS Descrizione
FROM Studenti as s
LEFT JOIN Iscrizioni as i
	ON s.StudenteId = i.StudenteId
LEFT JOIN Corsi as c
	ON i.CorsoId = c.CorsoId
ORDER BY s.Nome ASC;

-- DISTINCT serve per rimuovere dupplicati

select DISTINCT * from Corsi

SELECT DISTINCT -- CorsoId,
	NomeCorso,
	Descrizione,
	Crediti,
	Durata
FROM Corsi;

INSERT INTO Corsi
	(NomeCorso, Descrizione, Crediti, Durata)
VALUES
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120),	
	('SQL Server Base', 'Introduzione ai database e SQL', 9, 120);


-- UPDATE per modificare 
/*
	update tabella
	set colonna = nuovo valore
	where codizione
*/

SELECT * 
FROM Corsi 
where CorsoId IN(32, 60, 61);

update Corsi
set NomeCorso = 'Corso Base R',
	Descrizione = 'Corso programmazione in ML'
where CorsoId IN(60, 61);

update Corsi
set NomeCorso = 'Corso Informatico base',
	Descrizione = 'Istallazione e configurazione del sistema operativo'
where CorsoId >= 1;


-- Esercizio 1:
-- Modificare la durata del corso "Corso Informatico base" dove l'id = 47 

--update Iscrizioni
--set CorsoId = 1
--where StudenteId < 1

select 
	s.StudenteId,
	c.CorsoId,
	s.Nome,
	s.Cognome,
	c.NomeCorso
from Studenti s
inner join Iscrizioni i
	On i.StudenteId = s.StudenteId
inner join Corsi c
	On c.CorsoId = i.CorsoId


-- Esercizio 2: Modificare un corso in base all'Id es: 50

/*
	Delete per eliminare un record in base ad una condizione
	
	Sesempio:
		DELETE FROM tabella 
		WHERE Condizioni di ricerca
*/
-- Da non fare 
DELETE FROM Corsi 
WHERE CorsoId = 61;


-- Store procedure 