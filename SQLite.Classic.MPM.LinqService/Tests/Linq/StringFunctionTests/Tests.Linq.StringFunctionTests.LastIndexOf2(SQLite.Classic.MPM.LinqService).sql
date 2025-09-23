BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @Length  -- Int32
SET     @Length = 3

SELECT
	[p].[PersonID],
	'123' || [p].[FirstName] || '012345'
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND (Length('123' || [p].[FirstName] || '012345') - CharIndex('321', Reverse(Substr('123' || [p].[FirstName] || '012345', 6, Length('123' || [p].[FirstName] || '012345') - 5)))) - @Length = 7 AND
	CharIndex('123', '123' || [p].[FirstName] || '012345', 6) <> 0

