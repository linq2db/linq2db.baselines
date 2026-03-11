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
	NOT p.FirstName LIKE '%o~%h%' ESCAPE '~' AND p.PersonID = 1

