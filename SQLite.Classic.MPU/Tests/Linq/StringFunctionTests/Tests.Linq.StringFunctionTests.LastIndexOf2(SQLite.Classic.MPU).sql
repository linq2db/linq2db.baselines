BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[PersonID],
	'123' || [p].[FirstName] || '012345'
FROM
	[Person] [p]
WHERE
	Length('123' || [p].[FirstName] || '012345') - CharIndex('321', Reverse(Substr('123' || [p].[FirstName] || '012345', 6, Length('123' || [p].[FirstName] || '012345') - 5))) = 10 AND
	CharIndex('123', '123' || [p].[FirstName] || '012345', 6) <> 0 AND
	[p].[PersonID] = 1

