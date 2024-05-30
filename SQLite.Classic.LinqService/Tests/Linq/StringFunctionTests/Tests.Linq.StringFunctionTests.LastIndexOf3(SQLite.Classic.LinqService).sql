BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p NVarChar(3) -- String
SET     @p = '123'

SELECT
	[p].[PersonID],
	'123' || [p].[FirstName] || '0123451234'
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND 1 = CharIndex('321', Reverse(Substr('123' || [p].[FirstName] || '0123451234', 6, 6))) AND
	CharIndex(@p, LeftStr('123' || [p].[FirstName] || '0123451234', 11), 6) <> 0

