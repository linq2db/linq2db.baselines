BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[r].[PersonID]
		FROM
			[Person] [r]
		GROUP BY
			[r].[PersonID],
			[r].[PersonID]
	) [t1]

