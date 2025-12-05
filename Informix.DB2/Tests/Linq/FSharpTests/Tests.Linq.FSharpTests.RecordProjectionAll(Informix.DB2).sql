-- Informix.DB2 Informix

SELECT FIRST 2
	p.PersonID,
	p.FirstName,
	p.LastName,
	p.Gender
FROM
	Person p
WHERE
	p.PersonID = 1

