BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	p.FirstName, 
	p.PersonID, 
	p.LastName, 
	p.MiddleName, 
	p.Gender
FROM
	Person p
WHERE
	p.PersonID * 10 - 9 = 1

