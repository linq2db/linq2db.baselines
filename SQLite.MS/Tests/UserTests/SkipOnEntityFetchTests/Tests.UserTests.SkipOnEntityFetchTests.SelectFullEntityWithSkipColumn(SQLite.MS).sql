BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[FirstName],
	[t1].[LastName]
FROM
	[Person] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[FirstName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	Coalesce([p].[PersonID], 0) >= 2

BeforeExecute
-- SQLite.MS SQLite

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				[Person] [p]
			WHERE
				[p].[PersonID] IS NULL
		)
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SQLite.MS SQLite

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				[Person] [p]
			WHERE
				[p].[PersonID] IS NULL
		)
			THEN 1
		ELSE 0
	END

