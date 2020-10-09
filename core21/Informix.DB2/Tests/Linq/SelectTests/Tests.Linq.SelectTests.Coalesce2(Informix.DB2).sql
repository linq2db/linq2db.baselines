BeforeExecute
-- Informix.DB2 Informix

SELECT 
	p.PersonID, 
	Nvl(p.MiddleName, Nvl(p.FirstName, 'None')), 
	Nvl(p.LastName, Nvl(p.FirstName, 'None')), 
	Nvl(p.MiddleName, Nvl(p.MiddleName, 'None'))
FROM
	Person p
WHERE
	p.PersonID = 1

