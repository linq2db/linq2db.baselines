-- SqlServer.Contained.MS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[ComputedDecimalRow] [r]
WHERE
	Abs([r].[Fine]) = 1.000000000005

-- SqlServer.Contained.MS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[ComputedDecimalRow] [r]
WHERE
	IIF([r].[Id] > 0, [r].[Fine], -[r].[Fine]) = 1.000000000005

-- SqlServer.Contained.MS SqlServer.2025
SELECT
	COUNT(*)
FROM
	(
		SELECT
			[g_1].[Id]
		FROM
			[ComputedDecimalRow] [g_1]
		GROUP BY
			[g_1].[Id]
		HAVING
			MAX([g_1].[Fine]) = 1.000000000005
	) [t1]

-- SqlServer.Contained.MS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[ComputedDecimalRow] [r]
WHERE
	Abs([r].[Wide]) = 12345678901234.50

-- SqlServer.Contained.MS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[ComputedDecimalRow] [r]
WHERE
	IIF([r].[Id] > 0, [r].[Wide], -[r].[Wide]) = 12345678901234.50

-- SqlServer.Contained.MS SqlServer.2025
SELECT
	COUNT(*)
FROM
	(
		SELECT
			[g_1].[Id]
		FROM
			[ComputedDecimalRow] [g_1]
		GROUP BY
			[g_1].[Id]
		HAVING
			MAX([g_1].[Wide]) = 12345678901234.50
	) [t1]

-- SqlServer.Contained.MS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[ComputedDecimalRow] [r]
WHERE
	Abs([r].[Whole]) = 5.00

