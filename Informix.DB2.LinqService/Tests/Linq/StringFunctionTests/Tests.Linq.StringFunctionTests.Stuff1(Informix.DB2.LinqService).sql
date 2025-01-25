BeforeExecute
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
	Substr(p.FirstName, 1, 2) || '123' || Substr(p.FirstName, CHAR_LENGTH(p.FirstName) - (CHAR_LENGTH(p.FirstName) - 3) + 1, CHAR_LENGTH(p.FirstName) - 3) = 'Jo123n' AND
	p.PersonID = 1

