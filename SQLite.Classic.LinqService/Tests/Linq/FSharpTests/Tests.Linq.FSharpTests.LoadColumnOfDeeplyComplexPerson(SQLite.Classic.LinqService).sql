BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 1

SELECT
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @ID
LIMIT 2

