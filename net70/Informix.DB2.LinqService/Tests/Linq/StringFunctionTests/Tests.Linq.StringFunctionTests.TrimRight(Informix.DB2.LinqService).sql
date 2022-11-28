BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.PersonID,
	p.FirstName
FROM
	Person p
WHERE
	RTRIM('  ' || p.FirstName || ' ') = '  John' AND p.PersonID = 1

