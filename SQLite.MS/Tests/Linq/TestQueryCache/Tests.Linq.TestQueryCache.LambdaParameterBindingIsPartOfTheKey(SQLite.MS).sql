-- SQLite.MS SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	1 = 0

-- SQLite.MS SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] > [p].[PersonID]
	)

-- SQLite.MS SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [p_1]
		WHERE
			[p_1].[PersonID] > [p].[PersonID]
	)

-- SQLite.MS SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	1 = 0

