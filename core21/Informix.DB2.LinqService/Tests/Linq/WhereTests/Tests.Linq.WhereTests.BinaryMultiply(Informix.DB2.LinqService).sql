﻿BeforeExecute
-- Informix.DB2 Informix

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

