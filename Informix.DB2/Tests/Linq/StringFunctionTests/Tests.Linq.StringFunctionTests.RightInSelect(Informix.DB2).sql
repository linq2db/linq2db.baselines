BeforeExecute
-- Informix.DB2 Informix

SELECT
	Substr(p.FirstName, CHAR_LENGTH(p.FirstName || '.') - 1 - 2, 3)
FROM
	Person p
WHERE
	p.PersonID = 1

