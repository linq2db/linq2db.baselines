BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.PersonID,
	p2.FirstName,
	p3.LastName
FROM
	Person p
		INNER JOIN Person p2 ON 1=1
		INNER JOIN Person p3 ON 1=1
WHERE
	p.PersonID = p2.PersonID AND p.LastName = p3.LastName AND
	p.PersonID = 1

