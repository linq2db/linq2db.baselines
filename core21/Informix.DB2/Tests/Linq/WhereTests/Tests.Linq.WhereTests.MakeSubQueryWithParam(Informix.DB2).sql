BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.PersonID + 1,
	p.FirstName
FROM
	Person p
WHERE
	p.PersonID = 1

