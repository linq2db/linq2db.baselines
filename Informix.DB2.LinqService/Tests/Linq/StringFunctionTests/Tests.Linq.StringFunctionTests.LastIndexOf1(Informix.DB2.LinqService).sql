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
	(CHAR_LENGTH(p.LastName) - CharIndex('p', Reverse(p.LastName))) - CHAR_LENGTH('p') = 1 AND
	CharIndex('p', p.LastName) <> 0 AND p.PersonID = 1

