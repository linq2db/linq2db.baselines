-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @rate Decimal(1, 0)
SET     @rate = 2

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
					[u].[Q1] * @rate as [Amount]
				FROM
					[QuarterlySales] [u]
				WHERE
					[u].[Id] > 0 AND [u].[Q1] IS NOT NULL
				UNION ALL
				SELECT
					[x].[Id],
					[x].[Q2] * @rate as [Amount]
				FROM
					[QuarterlySales] [x]
				WHERE
					[x].[Id] > 0 AND [x].[Q2] IS NOT NULL
			) [u_1]
		WHERE
			[u_1].[Id] = [p].[Id] AND [u_1].[Amount] > 30
	)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @rate Decimal(1, 0)
SET     @rate = 1

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
					[u].[Q1] * @rate as [Amount]
				FROM
					[QuarterlySales] [u]
				WHERE
					[u].[Id] > 0 AND [u].[Q1] IS NOT NULL
				UNION ALL
				SELECT
					[x].[Id],
					[x].[Q2] * @rate as [Amount]
				FROM
					[QuarterlySales] [x]
				WHERE
					[x].[Id] > 0 AND [x].[Q2] IS NOT NULL
			) [u_1]
		WHERE
			[u_1].[Id] = [p].[Id] AND [u_1].[Amount] > 30
	)

