-- SQLite.MS SQLite
DECLARE @value Integer -- Int32
SET     @value = 1

SELECT
	@value
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = 1

-- SQLite.MS SQLite
DECLARE @value Integer -- Int32
SET     @value = 2

SELECT
	@value
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = 1

