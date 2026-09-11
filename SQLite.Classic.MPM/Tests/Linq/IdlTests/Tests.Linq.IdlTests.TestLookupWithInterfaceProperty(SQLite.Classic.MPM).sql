-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	[obj].[PersonID],
	[obj].[FirstName],
	[obj].[LastName],
	[obj].[MiddleName],
	[obj].[Gender]
FROM
	[Person] [obj]
WHERE
	[obj].[PersonID] = @id
LIMIT 2

