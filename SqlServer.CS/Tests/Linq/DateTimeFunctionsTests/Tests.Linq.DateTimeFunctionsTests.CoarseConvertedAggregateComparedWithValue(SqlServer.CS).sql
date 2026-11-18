-- SqlServer.CS SqlServer.2025
SELECT TOP (2)
	[r].[Value]
FROM
	[CoarseConvertedRow] [r]

-- SqlServer.CS SqlServer.2025
DECLARE @value DateTime
SET     @value = DATETIME2FROMPARTS(2026, 6, 1, 9, 0, 0, 0, 7)

SELECT
	COUNT(*)
FROM
	[CoarseConvertedRow] [r]
WHERE
	[r].[Value] = @value

-- SqlServer.CS SqlServer.2025
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

-- SqlServer.CS SqlServer.2025
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

-- SqlServer.CS SqlServer.2025
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

-- SqlServer.CS SqlServer.2025
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

-- SqlServer.CS SqlServer.2025
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX([g_1].[Value]) as [Max_1]
		FROM
			[CoarseConvertedRow] [g_1]
		GROUP BY
			[g_1].[Id]
	) [t1]
WHERE
	[t1].[Max_1] IN (DATETIME2FROMPARTS(2026, 6, 1, 9, 0, 0, 0, 7))

