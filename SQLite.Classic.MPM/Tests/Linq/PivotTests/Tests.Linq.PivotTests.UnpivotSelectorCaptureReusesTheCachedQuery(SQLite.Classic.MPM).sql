-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @rate Decimal(1, 0)
SET     @rate = 2

SELECT
	[u_1].[Amount]
FROM
	(
		SELECT
			[u].[Id],
			CAST('Q1' AS NVarChar(255)) as [Quarter],
			[u].[Q1] * @rate as [Amount]
		FROM
			[QuarterlySales] [u]
		WHERE
			[u].[Q1] IS NOT NULL
		UNION ALL
		SELECT
			[row_1].[Id],
			CAST('Q2' AS NVarChar(255)) as [Quarter],
			[row_1].[Q2] * @rate as [Amount]
		FROM
			[QuarterlySales] [row_1]
		WHERE
			[row_1].[Q2] IS NOT NULL
	) [u_1]
WHERE
	[u_1].[Id] = 1 AND [u_1].[Quarter] = 'Q1'

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @rate Decimal(1, 0)
SET     @rate = 3

SELECT
	[u_1].[Amount]
FROM
	(
		SELECT
			[u].[Id],
			CAST('Q1' AS NVarChar(255)) as [Quarter],
			[u].[Q1] * @rate as [Amount]
		FROM
			[QuarterlySales] [u]
		WHERE
			[u].[Q1] IS NOT NULL
		UNION ALL
		SELECT
			[row_1].[Id],
			CAST('Q2' AS NVarChar(255)) as [Quarter],
			[row_1].[Q2] * @rate as [Amount]
		FROM
			[QuarterlySales] [row_1]
		WHERE
			[row_1].[Q2] IS NOT NULL
	) [u_1]
WHERE
	[u_1].[Id] = 1 AND [u_1].[Quarter] = 'Q1'

