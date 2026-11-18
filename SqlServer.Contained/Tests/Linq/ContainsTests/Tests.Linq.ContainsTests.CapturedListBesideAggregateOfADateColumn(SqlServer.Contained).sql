-- SqlServer.Contained SqlServer.2025
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX([g_1].[Day]) as [Max_1]
		FROM
			[DayRow] [g_1]
		GROUP BY
			[g_1].[Id]
	) [t1]
WHERE
	[t1].[Max_1] IN (DATETIME2FROMPARTS(2026, 6, 1, 0, 0, 0, 0, 7))

-- SqlServer.Contained SqlServer.2025
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX([g_1].[Day]) as [Max_1]
		FROM
			[DayRow] [g_1]
		GROUP BY
			[g_1].[Id]
	) [t1]
WHERE
	[t1].[Max_1] IN (DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 0, 7))

