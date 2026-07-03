USE ScuolaDb;


select *
from Studenti;

-- Restituisce uno studente con l'id passata nel parametro
SELECT
	*
FROM Studenti
WHERE StudenteId = 3;

/*
	Gli operatori di confronto in SQL
	Servono per confrontare valori:
	| Operatore		| Significato   |
	|---------------|---------------|
	|		=		| Uguale	    |
	|		!=		| Diverso       |
	|		<>		| Diverso       |
	|		<		| Minore	    |
	|		>		| Maggiore	    |
	|		<=		| Minore uguale |
	|		>=		|Maggiore uguale|

---------------------------------------------------------------------

	Operatori logici (booleano)
	| Operatore     | Significato   		|
	|---------------|-----------------------|
	|		AND		| tutte vere    		|
	|		OR		| almeno un vera        |
	|		NOT		| nega la condizione    |
	|   IS NULL		| Valore nullo  		|
*/

-- L'istruzione Where Filtra i date basati sulle condizione 
/*
Es:
	SELECT 
		colonne
	FROM tabella
	WHERE condizione 
*/

SELECT
	Nome,
	Cognome,
	Telefono
FROM Studenti
WHERE StudenteId = 2;


-- La concatenazione(+) 
SELECT
	Nome + ' ' + Cognome,
	Telefono
FROM Studenti
WHERE StudenteId = 2;

-- Aliass con la concatenazione 
SELECT
	Nome + ' ' + Cognome AS Nome_Completo_dello_studente,
	Telefono
FROM Studenti;

SELECT
	Nome + ' ' + Cognome AS 'Nome Completo dello studente',
	Telefono
FROM Studenti;

SELECT
	Nome + ' ' + Cognome AS [Nome Completo dello studente],
	Telefono
FROM Studenti;

SELECT *
FROM Studenti
ORDER by studenteId DESC;

-- Restituisce la lista degli studenti che hanno inserito la data di nascita durante l'iscrizione
SELECT
	Nome + ' ' + Cognome AS [Nome Completo dello studente],
	CodiceFiscale
FROM Studenti
WHERE DataNascita IS NOT NULL;


SELECT
	Nome + ' ' + Cognome AS [Nome Completo dello studente],
	CodiceFiscale,
	DataNascita as [Data Nascita]
FROM Studenti
WHERE DataNascita IS NOT NULL AND DataNascita >= '2000-01-01';


-- TOP selezionare le prime righe di una tabella
SELECT
	TOP 10
	*
-- i primi 10 record
FROM Corsi;

SELECT
	TOP 10
	*
FROM Corsi
ORDER BY NomeCorso DESC;
-- ordina in base al nome del corso  (ASC/ DESC)



SELECT
	TOP 10
	Nome + ' ' + Cognome AS [Nome Completo dello studente],
	CodiceFiscale,
	DataNascita as [Data Nascita]
FROM Studenti
WHERE DataNascita IS NOT NULL AND DataNascita >= '2000-01-01';

-- ORDER BY (Per ordinare colonne) (ASC/DESC)
SELECT
	TOP 10
	Nome + ' ' + Cognome AS [Nome Completo dello studente],
	CodiceFiscale,
	DataNascita as [Data Nascita]
FROM Studenti
WHERE DataNascita IS NOT NULL AND DataNascita >= '2000-01-01'
ORDER BY Email ASC;


-- Restiture la lista dei primi 10 studenti in ordine ascendente
SELECT
	TOP 10
	*
FROM Studenti
ORDER BY Nome ASC;

