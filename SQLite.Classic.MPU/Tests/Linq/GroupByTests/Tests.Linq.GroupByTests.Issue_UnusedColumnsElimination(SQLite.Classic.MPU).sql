BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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

