-- SqlServer.2019
SELECT TOP (2)
	[r].[Value]
FROM
	[CoarseConvertedRow] [r]

-- SqlServer.2019
DECLARE @value DateTime
SET     @value = DATETIME2FROMPARTS(2026, 6, 1, 9, 0, 0, 0, 7)

SELECT
	COUNT(*)
FROM
	[CoarseConvertedRow] [r]
WHERE
	[r].[Value] = @value

-- SqlServer.2019
DECLARE @value DateTime
SET     @value = DATETIME2FROMPARTS(2026, 6, 1, 9, 0, 0, 0, 7)

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

-- SqlServer.2019
DECLARE @CoarseValue DateTime
SET     @CoarseValue = DATETIME2FROMPARTS(2026, 6, 1, 9, 0, 0, 0, 7)

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

-- SqlServer.2019
DECLARE @day Date
SET     @day = DATETIME2FROMPARTS(2026, 5, 31, 0, 0, 0, 0, 7)

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

-- SqlServer.2019
DECLARE @CoarseConvertedDay Date
SET     @CoarseConvertedDay = DATETIME2FROMPARTS(2026, 5, 31, 0, 0, 0, 0, 7)

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

