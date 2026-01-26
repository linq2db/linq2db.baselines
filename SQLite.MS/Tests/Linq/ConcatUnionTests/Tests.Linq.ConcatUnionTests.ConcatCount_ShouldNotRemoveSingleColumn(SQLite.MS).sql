-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[t1].[PersonID]
		FROM
			[Person] [t1]
		UNION ALL
		SELECT
			CAST(1 AS INTEGER) as [PersonID]
		FROM
			[Parent] [t2]
	) [t3]

