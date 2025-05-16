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
	Substr(p.FirstName, Length(p.FirstName || '.') - 3, 3) = 'ohn' AND
	p.PersonID = 1

