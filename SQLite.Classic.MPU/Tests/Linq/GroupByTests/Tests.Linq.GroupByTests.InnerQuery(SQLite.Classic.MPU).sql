BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	(
		SELECT
			[s_1].[Taxonomy]
		FROM
			[Doctor] [s_1]
		WHERE
			[s].[PersonID] = [s_1].[PersonID]
		LIMIT 1
	)
FROM
	[Doctor] [s]
GROUP BY
	[s].[PersonID]

