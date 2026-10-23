-- Sybase.Managed Sybase
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
	CAST([t1].[Max_1] AS DateTime) IN ('2026-06-01 00:00:00.000')

-- Sybase.Managed Sybase
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
	CAST([t1].[Max_1] AS DateTime) IN ('2026-06-01 10:00:00.000')

