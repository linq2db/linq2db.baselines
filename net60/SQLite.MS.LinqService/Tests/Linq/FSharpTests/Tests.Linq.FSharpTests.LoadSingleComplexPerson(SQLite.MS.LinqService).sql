BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 1

SELECT
	[p].[PersonID],
	[p].[Gender],
	[p].[FirstName],
	[p].[MiddleName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @ID
LIMIT 2

