﻿BeforeExecute
-- Informix.DB2 Informix

-- Informix.DB2 Informix
SELECT FIRST 1 
	p.FirstName, 
	p.PersonID, 
	p.LastName, 
	p.MiddleName, 
	p.Gender
FROM
	Person p
WHERE
	p.PersonID = 1

