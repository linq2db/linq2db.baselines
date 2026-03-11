-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	1 = 0

-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

