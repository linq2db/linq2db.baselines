﻿BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	p.PersonID,
	p.FirstName,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.PersonID = 1

