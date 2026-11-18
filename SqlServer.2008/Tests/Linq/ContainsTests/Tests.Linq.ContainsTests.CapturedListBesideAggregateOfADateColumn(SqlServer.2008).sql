-- SqlServer.2008
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
	[t1].[Max_1] IN (CAST('2026-06-01T00:00:00.0000000' AS DATETIME2))

-- SqlServer.2008
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
	[t1].[Max_1] IN (CAST('2026-06-01T10:00:00.0000000' AS DATETIME2))

