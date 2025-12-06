-- Informix.DB2 Informix

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	Substr(p.FirstName, 2, CHAR_LENGTH(p.FirstName || '.') - 2) = 'ohn' AND
	p.PersonID = 1

