-- SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SQLite.Classic SQLite
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @p
ORDER BY
	[p].[PersonID]

