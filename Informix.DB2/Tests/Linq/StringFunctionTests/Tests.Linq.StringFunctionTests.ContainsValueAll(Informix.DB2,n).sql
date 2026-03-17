-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.PersonID = 1 AND '123n456' LIKE '%n%' ESCAPE '~'

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.PersonID = 1 AND NOT '123n456' LIKE '%n%' ESCAPE '~'

