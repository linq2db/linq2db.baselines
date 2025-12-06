-- SQLite.MS SQLite

SELECT
	[t1].[FirstName],
	[t1].[LastName]
FROM
	[Person] [t1]

-- SQLite.MS SQLite

SELECT
	[p].[FirstName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	Coalesce([p].[PersonID], 0) >= 2

-- SQLite.MS SQLite

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] IS NULL
	)

-- SQLite.MS SQLite

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] IS NULL
	)

