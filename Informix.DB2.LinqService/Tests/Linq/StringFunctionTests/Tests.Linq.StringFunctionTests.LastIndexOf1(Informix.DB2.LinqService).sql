﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @p VarChar(1) -- String
SET     @p = 'p'

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	CHAR_LENGTH(p.LastName) - CharIndex('p', Reverse(p.LastName)) = 2 AND
	CharIndex(@p, p.LastName) <> 0 AND p.PersonID = 1

