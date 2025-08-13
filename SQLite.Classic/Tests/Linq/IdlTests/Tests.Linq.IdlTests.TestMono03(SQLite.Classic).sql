BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p1 NVarChar(1) -- String
SET     @p1 = 'A'
DECLARE @p2  -- Int32
SET     @p2 = 1

SELECT
	[x].[FirstName]
FROM
	[Person] [x]
UNION ALL
SELECT
	[x_1].[FirstName]
FROM
	[Person] [x_1],
	[Patient] [z]
WHERE
	[x_1].[FirstName] = @p1 OR [z].[PersonID] = @p2

