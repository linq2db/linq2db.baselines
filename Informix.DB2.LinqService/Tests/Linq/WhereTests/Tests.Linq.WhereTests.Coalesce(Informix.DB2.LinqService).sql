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
	p.PersonID = 1 AND Nvl(p.MiddleName, 'None') = 'None' AND
	p.FirstName = 'John'

