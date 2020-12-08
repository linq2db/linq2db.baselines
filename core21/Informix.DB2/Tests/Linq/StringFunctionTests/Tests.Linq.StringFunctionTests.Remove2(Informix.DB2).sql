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
	Substr(p.FirstName, 1, 1) || Substr(p.FirstName, 4, Length(p.FirstName) - 3) = 'Jn' AND p.PersonID = 1

