-- SqlServer.Contained.MS SqlServer.2019
SELECT
	MAX([g_1].[Value])
FROM
	[ScaledDecimalRow] [g_1]
GROUP BY
	[g_1].[Id]
UNION ALL
SELECT
	CAST(1.004 AS Decimal(4, 3))
FROM
	[ScaledDecimalRow] [r]

-- SqlServer.Contained.MS SqlServer.2019
SELECT
	IIF([r].[Id] > 0, [r].[Value], [r].[Value] + 1)
FROM
	[ScaledDecimalRow] [r]
UNION ALL
SELECT
	CAST(1.004 AS Decimal(4, 3))
FROM
	[ScaledDecimalRow] [r_1]

