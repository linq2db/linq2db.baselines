BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	x.PersonID, 
	x.FirstName, 
	x.LastName, 
	x.MiddleName
FROM
	Person x
WHERE
	x.FirstName = 'John'

