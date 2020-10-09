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
		INNER JOIN ( 
			SELECT FIRST 1
				'Doe' as Item
			FROM SYSTABLES
		) n ON p.LastName = n.Item

