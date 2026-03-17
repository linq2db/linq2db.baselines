-- Informix.DB2 Informix

SELECT
	Substr(p.FirstName, CHAR_LENGTH(p.FirstName || '.') - 3, 3)
FROM
	Person p
WHERE
	p.PersonID = 1

