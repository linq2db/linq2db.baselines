BeforeExecute
-- Informix.DB2 Informix

SELECT
	LENGTH(p.FirstName || '.') = 1
FROM
	Person p
WHERE
	p.PersonID = 1

