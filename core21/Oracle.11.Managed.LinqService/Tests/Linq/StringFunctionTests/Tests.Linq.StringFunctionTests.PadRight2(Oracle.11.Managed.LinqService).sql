﻿BeforeExecute
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
	RPad(p.FirstName, 6, '*') || '123' = 'John**123' AND
	p.PersonID = 1

