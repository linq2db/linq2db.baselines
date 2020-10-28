BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	CASE
		WHEN CharIndex('123', LeftStr('123' || [p].[FirstName] || '0123451234', 11), 6) = 0
			THEN -1
		ELSE 11 - CharIndex('321', Reverse(Substr('123' || [p].[FirstName] || '0123451234', 6, 6))) - 2
	END = 8 AND
	[p].[PersonID] = 1

