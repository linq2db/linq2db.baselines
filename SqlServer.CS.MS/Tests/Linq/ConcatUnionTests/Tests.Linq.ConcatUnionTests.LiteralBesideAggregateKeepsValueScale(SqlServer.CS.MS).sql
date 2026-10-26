-- SqlServer.CS.MS SqlServer.2025
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

-- SqlServer.CS.MS SqlServer.2025
SELECT
	IIF([r].[Id] > 0, [r].[Value], [r].[Value] + 1)
FROM
	[ScaledDecimalRow] [r]
UNION ALL
SELECT
	CAST(1.004 AS Decimal(4, 3))
FROM
	[ScaledDecimalRow] [r_1]

