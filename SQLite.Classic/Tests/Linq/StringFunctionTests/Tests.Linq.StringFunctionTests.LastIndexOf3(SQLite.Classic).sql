BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[PersonID],
	'123' || [p].[FirstName] || '0123451234'
FROM
	[Person] [p]
WHERE
	1 = CharIndex('321', Reverse(Substr('123' || [p].[FirstName] || '0123451234', 6, 6))) AND
	CharIndex('123', LeftStr('123' || [p].[FirstName] || '0123451234', 11), 6) <> 0 AND
	[p].[PersonID] = 1

