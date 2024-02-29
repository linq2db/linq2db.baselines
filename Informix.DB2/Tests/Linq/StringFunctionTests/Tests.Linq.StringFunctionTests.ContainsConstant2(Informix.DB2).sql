BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	Person p
WHERE
	p.FirstName LIKE '%o~%h%' ESCAPE '~' AND p.PersonID = 1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	Person p
WHERE
	NOT p.FirstName LIKE '%o~%h%' ESCAPE '~' AND p.PersonID = 1

