-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX(g_1.Day) as Max_1
		FROM
			DayRow g_1
		GROUP BY
			g_1.Id
	) t1
WHERE
	toDateTime64(t1.Max_1, 7) IN (toDateTime64('2026-06-01 00:00:00.0000000', 7))

-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX(g_1.Day) as Max_1
		FROM
			DayRow g_1
		GROUP BY
			g_1.Id
	) t1
WHERE
	toDateTime64(t1.Max_1, 7) IN (toDateTime64('2026-06-01 10:00:00.0000000', 7))

