-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	Lower(p.FirstName) LIKE 'joh%' ESCAPE '~' AND p.PersonID = 1

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	NOT Lower(p.FirstName) LIKE 'joh%' ESCAPE '~' AND p.PersonID = 1

