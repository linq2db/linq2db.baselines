BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[c1],
	[t1].[c2],
	[t1].[c3]
FROM
	(
		SELECT
			CAST(0 AS INTEGER) as [c1],
			NULL as [c2],
			NULL as [c3]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] < 0
		UNION ALL
		SELECT
			[p_1].[PersonID] as [c1],
			[p_1].[FirstName] as [c2],
			[p_1].[LastName] as [c3]
		FROM
			[Person] [p_1]
	) [t1]
ORDER BY
	[t1].[c1],
	[t1].[c2],
	[t1].[c3]

