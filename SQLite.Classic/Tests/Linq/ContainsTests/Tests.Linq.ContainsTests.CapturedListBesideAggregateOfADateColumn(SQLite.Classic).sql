-- SQLite.Classic SQLite
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
	strftime('%Y-%m-%d %H:%M:%f', [t1].[Max_1]) IN ('2026-06-01 00:00:00.000')

-- SQLite.Classic SQLite
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
	strftime('%Y-%m-%d %H:%M:%f', [t1].[Max_1]) IN ('2026-06-01 10:00:00.000')

