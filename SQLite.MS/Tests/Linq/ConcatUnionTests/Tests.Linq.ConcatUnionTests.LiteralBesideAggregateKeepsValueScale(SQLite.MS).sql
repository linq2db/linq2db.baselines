-- SQLite.MS SQLite
SELECT
	MAX([g_1].[Value])
FROM
	[ScaledDecimalRow] [g_1]
GROUP BY
	[g_1].[Id]
UNION ALL
SELECT
	CAST(1.004 AS Decimal(19, 3))
FROM
	[ScaledDecimalRow] [r]

-- SQLite.MS SQLite
SELECT
	CASE
		WHEN [r].[Id] > 0 THEN [r].[Value]
		ELSE [r].[Value] + 1
	END
FROM
	[ScaledDecimalRow] [r]
UNION ALL
SELECT
	CAST(1.004 AS Decimal(19, 3))
FROM
	[ScaledDecimalRow] [r_1]

