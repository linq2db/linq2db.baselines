BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	CASE
		WHEN CharIndex('123', '123' || [p].[FirstName] || '012345', 6) = 0
			THEN -1
		ELSE Length('123' || [p].[FirstName] || '012345') - CharIndex('321', Reverse(Substr('123' || [p].[FirstName] || '012345', 6, Length('123' || [p].[FirstName] || '012345') - 5))) - 2
	END = 8 AND
	[p].[PersonID] = 1

