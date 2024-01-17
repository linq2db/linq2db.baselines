BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
LIMIT @take

