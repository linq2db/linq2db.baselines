BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 2
	p.FirstName
FROM
	Person p
WHERE
	p.PersonID = 1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.FirstName LIKE 'Joh%' ESCAPE '~' AND p.PersonID = 1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	NOT p.FirstName LIKE 'Joh%' ESCAPE '~' AND p.PersonID = 1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.FirstName LIKE 'JOH%' ESCAPE '~' AND p.PersonID = 1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	NOT p.FirstName LIKE 'JOH%' ESCAPE '~' AND p.PersonID = 1

