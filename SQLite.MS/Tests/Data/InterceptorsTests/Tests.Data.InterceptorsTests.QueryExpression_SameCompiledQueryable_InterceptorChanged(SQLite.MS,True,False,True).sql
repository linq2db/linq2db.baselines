-- SQLite.MS SQLite
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 0 AND [p].[PersonID] >= @p

-- SQLite.MS SQLite
DECLARE @Limit Integer -- Int32
SET     @Limit = 3
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 0 AND [p].[PersonID] <= @Limit AND
	[p].[PersonID] >= @p

