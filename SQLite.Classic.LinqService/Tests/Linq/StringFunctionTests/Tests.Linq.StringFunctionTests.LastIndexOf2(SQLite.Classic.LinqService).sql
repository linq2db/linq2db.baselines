BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[PersonID],
	'123' || [p].[FirstName] || '012345'
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND CASE
		WHEN CharIndex('123', '123' || [p].[FirstName] || '012345', 6) = 0
			THEN -1
		ELSE Length('123' || [p].[FirstName] || '012345') - CharIndex('321', Reverse(Substr('123' || [p].[FirstName] || '012345', 6, Length('123' || [p].[FirstName] || '012345') - 5))) - 2
	END = 8

