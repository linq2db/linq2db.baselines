-- SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (
		SELECT
			[t1].[value]
		FROM
			(
				SELECT 1 AS value
			) [t1]
	)

-- SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (
		SELECT
			[t1].[value]
		FROM
			(
				SELECT 2 AS value
			) [t1]
	)

-- SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (
		SELECT
			[t1].[value]
		FROM
			(
				SELECT 1 AS value
			) [t1]
	)

