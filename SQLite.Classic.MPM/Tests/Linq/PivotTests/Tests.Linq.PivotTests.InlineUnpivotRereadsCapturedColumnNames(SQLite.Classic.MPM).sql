-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[p].[Region]
FROM
	[QuarterlySales] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					[u].[Id],
					CAST('Q1' AS NVarChar(255)) as [Quarter]
				FROM
					[QuarterlySales] [u]
				WHERE
					[u].[Id] > 0 AND [u].[Q1] IS NOT NULL
				UNION ALL
				SELECT
					[x].[Id],
					CAST('Q2' AS NVarChar(255)) as [Quarter]
				FROM
					[QuarterlySales] [x]
				WHERE
					[x].[Id] > 0 AND [x].[Q2] IS NOT NULL
			) [u_1]
		WHERE
			[u_1].[Id] = [p].[Id] AND [u_1].[Quarter] = 'Q2'
	)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[p].[Region]
FROM
	[QuarterlySales] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					[u].[Id],
					CAST('Q1' AS NVarChar(255)) as [Quarter]
				FROM
					[QuarterlySales] [u]
				WHERE
					[u].[Id] > 0 AND [u].[Q1] IS NOT NULL
				UNION ALL
				SELECT
					[x].[Id],
					CAST('Q3' AS NVarChar(255)) as [Quarter]
				FROM
					[QuarterlySales] [x]
				WHERE
					[x].[Id] > 0 AND [x].[Q3] IS NOT NULL
			) [u_1]
		WHERE
			[u_1].[Id] = [p].[Id] AND [u_1].[Quarter] = 'Q2'
	)

