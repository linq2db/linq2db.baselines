BeforeExecute
-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 1

SELECT
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @p
LIMIT 2

