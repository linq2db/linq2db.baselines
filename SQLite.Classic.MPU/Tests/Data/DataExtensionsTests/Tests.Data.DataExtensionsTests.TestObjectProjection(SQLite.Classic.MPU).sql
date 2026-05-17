-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1
LIMIT @take

