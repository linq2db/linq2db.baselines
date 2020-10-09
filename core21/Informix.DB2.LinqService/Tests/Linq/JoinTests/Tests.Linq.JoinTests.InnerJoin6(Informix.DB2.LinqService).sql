BeforeExecute
-- Informix.DB2 Informix

SELECT 
	p1.PersonID, 
	p2.FirstName
FROM
	Person p1
		INNER JOIN ( 
			SELECT 
				p3.PersonID + 1 as ID, 
				p3.FirstName
			FROM
				Person p3
		) p2 ON p1.PersonID = p2.ID - 1
WHERE
	p1.PersonID = 1

