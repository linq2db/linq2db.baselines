﻿BeforeExecute
--  Informix.DB2 Informix
DECLARE @s VarChar(7) -- String
SET     @s = '123[456'

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.PersonID = 1 AND @s LIKE '%~[%' ESCAPE '~'

