BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.FirstName LIKE 'Jo%' ESCAPE '~' AND p.PersonID = 1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.FirstName LIKE 'jo%' ESCAPE '~' AND p.PersonID = 1

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	NOT p.FirstName LIKE 'Jo%' ESCAPE '~' AND p.PersonID = 1

