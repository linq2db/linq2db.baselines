BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p NVarChar(3) -- String
SET     @p = '123'

SELECT
	[p].[PersonID],
	'123' || [p].[FirstName] || '012345'
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND CASE
		WHEN CharIndex(@p, '123' || [p].[FirstName] || '012345', 6) = 0
			THEN -1
		ELSE Length('123' || [p].[FirstName] || '012345') - CharIndex('321', Reverse(Substr('123' || [p].[FirstName] || '012345', 6, Length('123' || [p].[FirstName] || '012345') - 5))) - 2
	END = 8

