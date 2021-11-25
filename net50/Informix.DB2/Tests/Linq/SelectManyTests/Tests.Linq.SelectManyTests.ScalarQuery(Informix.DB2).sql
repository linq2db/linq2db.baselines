BeforeExecute
-- Informix.DB2 Informix

SELECT
	p2.PersonID,
	p1.FirstName
FROM
	Person p1
		INNER JOIN Person p2 ON 1=1
WHERE
	p1.PersonID = p2.PersonID

