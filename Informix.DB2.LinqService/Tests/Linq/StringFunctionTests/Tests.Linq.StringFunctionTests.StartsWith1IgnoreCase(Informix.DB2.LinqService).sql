BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	Lower(p.FirstName) LIKE 'joh%' ESCAPE '~' AND p.PersonID = 1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	NOT Lower(p.FirstName) LIKE 'joh%' ESCAPE '~' AND p.PersonID = 1

