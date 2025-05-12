BeforeExecute
-- Informix.DB2 Informix

SELECT
	Length(p.FirstName || '.') = 1
FROM
	Person p
WHERE
	p.PersonID = 1

