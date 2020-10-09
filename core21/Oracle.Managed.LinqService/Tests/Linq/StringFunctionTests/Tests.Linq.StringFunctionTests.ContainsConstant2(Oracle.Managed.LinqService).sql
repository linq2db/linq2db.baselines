BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	p.FirstName, 
	p.PersonID, 
	p.LastName, 
	p.MiddleName, 
	p.Gender
FROM
	Person p
WHERE
	p.FirstName NOT LIKE '%o~%h%' ESCAPE '~' AND p.PersonID = 1

