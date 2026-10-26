-- SqlServer.Contained SqlServer.2025
SELECT
	COUNT(*)
FROM
	[ComputedDecimalRow] [r]
WHERE
	Abs([r].[Fine]) IN (1.000000000005)

-- SqlServer.Contained SqlServer.2025
SELECT
	COUNT(*)
FROM
	[ComputedDecimalRow] [r]
WHERE
	Abs([r].[Fine]) IN (1.000000000005)

-- SqlServer.Contained SqlServer.2025
SELECT
	COUNT(*)
FROM
	[ComputedDecimalRow] [r]
WHERE
	Abs([r].[Wide]) IN (12345678901234.50)

-- SqlServer.Contained SqlServer.2025
SELECT
	COUNT(*)
FROM
	[ComputedDecimalRow] [r]
WHERE
	Abs([r].[Wide]) IN (12345678901234.50)

-- SqlServer.Contained SqlServer.2025
SELECT
	COUNT(*)
FROM
	[ComputedDecimalRow] [r]
WHERE
	IIF([r].[Fine] * 2 = ROUND([r].[Fine] * 2, 2) AND [r].[Fine] <> ROUND([r].[Fine], 2), ROUND([r].[Fine] / 2, 2) * 2, ROUND([r].[Fine], 2)) = 1.004

-- SqlServer.Contained SqlServer.2025
SELECT
	COUNT(*)
FROM
	[ComputedDecimalRow] [r]
WHERE
	IIF([r].[Fine] * 2 = ROUND([r].[Fine] * 2, 2) AND [r].[Fine] <> ROUND([r].[Fine], 2), ROUND([r].[Fine] / 2, 2) * 2, ROUND([r].[Fine], 2)) IN (1.004)

-- SqlServer.Contained SqlServer.2025
SELECT
	COUNT(*)
FROM
	[ComputedDecimalRow] [r]
WHERE
	IIF([r].[Fine] * 2 = ROUND([r].[Fine] * 2, 2) AND [r].[Fine] <> ROUND([r].[Fine], 2), ROUND([r].[Fine] / 2, 2) * 2, ROUND([r].[Fine], 2)) IN (1.004)

