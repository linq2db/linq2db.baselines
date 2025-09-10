BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @take  -- Int32
SET     @take = 2
DECLARE @skip  -- Int32
SET     @skip = 1

SELECT
	[r].[PersonID],
	[r].[LastName]
FROM
	[Person] [r]
ORDER BY
	[r].[FirstName]
LIMIT @take OFFSET @skip

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

