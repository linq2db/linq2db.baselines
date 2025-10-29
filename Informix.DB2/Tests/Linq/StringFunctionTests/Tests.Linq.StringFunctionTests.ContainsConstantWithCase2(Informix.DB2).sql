-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.FirstName LIKE '%Joh%' ESCAPE '~' AND p.PersonID = 1

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	NOT p.FirstName LIKE '%Joh%' ESCAPE '~' AND p.PersonID = 1

