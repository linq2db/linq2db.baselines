BeforeExecute
-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	[t1].[PersonID],
	[p2].[FirstName]
FROM
	[Person] [t1]
		CROSS JOIN [Person] [p2]
WHERE
	[t1].[PersonID] = [p2].[PersonID] AND [p2].[PersonID] = @id

