-- Informix.DB2 Informix

DELETE FROM
	Person
WHERE
	Person.PersonID > 4

-- Informix.DB2 Informix

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	'John',
	'Shepard',
	'M'
)

-- Informix.DB2 Informix

SELECT DBINFO('sqlca.sqlerrd1') FROM systables where tabid = 1

-- Informix.DB2 Informix

SELECT FIRST 2
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.FirstName = 'John' AND p.LastName = 'Shepard'

-- Informix.DB2 Informix

DELETE FROM
	Person
WHERE
	Person.PersonID > 4

