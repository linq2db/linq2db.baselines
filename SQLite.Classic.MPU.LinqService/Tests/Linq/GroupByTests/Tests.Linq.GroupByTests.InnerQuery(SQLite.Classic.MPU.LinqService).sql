BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[Taxonomy]
FROM
	(
		SELECT
			[s].[PersonID]
		FROM
			[Doctor] [s]
		GROUP BY
			[s].[PersonID]
	) [s_2]
		INNER JOIN (
			SELECT
				[s_1].[Taxonomy],
				ROW_NUMBER() OVER (PARTITION BY [s_1].[PersonID] ORDER BY [s_1].[PersonID]) as [rn],
				[s_1].[PersonID]
			FROM
				[Doctor] [s_1]
		) [t1] ON [s_2].[PersonID] = [t1].[PersonID] AND [t1].[rn] <= 1

