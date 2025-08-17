BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @s VarChar(7) -- String
SET     @s = '123n456'

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	p.PersonID = 1 AND @s LIKE '%n%' ESCAPE '~'

