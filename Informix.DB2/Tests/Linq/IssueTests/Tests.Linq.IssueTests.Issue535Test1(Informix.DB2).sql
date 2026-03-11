-- Informix.DB2 Informix

SELECT FIRST 1
	p.PersonID,
	p.FirstName,
	p.LastName
FROM
	Person p
WHERE
	p.FirstName LIKE 'J%' ESCAPE '~' AND (p.PersonID = 1 OR p.LastName = 'fail')

