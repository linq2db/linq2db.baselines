-- SqlServer.2008.MS SqlServer.2008
SELECT TOP (2)
	[r].[Value]
FROM
	[CoarseConvertedRow] [r]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @value DateTime
SET     @value = CAST('2026-06-01T09:00:00.0000000' AS DATETIME2)

SELECT
	COUNT(*)
FROM
	[CoarseConvertedRow] [r]
WHERE
	[r].[Value] = @value

-- SqlServer.2008.MS SqlServer.2008
DECLARE @value DateTime
SET     @value = CAST('2026-06-01T09:00:00.0000000' AS DATETIME2)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[g_1].[Id]
		FROM
			[CoarseConvertedRow] [g_1]
		GROUP BY
			[g_1].[Id]
		HAVING
			MAX([g_1].[Value]) = @value
	) [t1]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @CoarseValue DateTime
SET     @CoarseValue = CAST('2026-06-01T09:00:00.0000000' AS DATETIME2)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[g_1].[Id]
		FROM
			[CoarseConvertedRow] [g_1]
		GROUP BY
			[g_1].[Id]
		HAVING
			MAX([g_1].[Value]) = @CoarseValue
	) [t1]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @day Date
SET     @day = CAST('2026-05-31T00:00:00.0000000' AS DATETIME2)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[g_1].[Id]
		FROM
			[CoarseConvertedRow] [g_1]
		GROUP BY
			[g_1].[Id]
		HAVING
			MIN([g_1].[Day]) = @day
	) [t1]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @CoarseConvertedDay Date
SET     @CoarseConvertedDay = CAST('2026-05-31T00:00:00.0000000' AS DATETIME2)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[g_1].[Id]
		FROM
			[CoarseConvertedRow] [g_1]
		GROUP BY
			[g_1].[Id]
		HAVING
			MIN([g_1].[Day]) = @CoarseConvertedDay
	) [t1]

