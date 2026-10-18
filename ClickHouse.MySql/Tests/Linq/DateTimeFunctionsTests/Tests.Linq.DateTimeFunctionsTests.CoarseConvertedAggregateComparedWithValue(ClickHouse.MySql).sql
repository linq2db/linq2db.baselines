-- ClickHouse.MySql ClickHouse
SELECT
	r.Value
FROM
	CoarseConvertedRow r
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	CoarseConvertedRow r
WHERE
	r.Value = toDateTime('2026-06-01 09:00:00')

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			CoarseConvertedRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1.Value) = toDateTime('2026-06-01 09:00:00')
	) t1

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			CoarseConvertedRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1.Value) = toDateTime('2026-06-01 09:00:00')
	) t1

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			CoarseConvertedRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MIN(g_1.Day) = toDate32('2026-05-31')
	) t1

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			CoarseConvertedRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MIN(g_1.Day) = toDate32('2026-05-31')
	) t1

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX(g_1.Value) as Max_1
		FROM
			CoarseConvertedRow g_1
		GROUP BY
			g_1.Id
	) t1
WHERE
	toDateTime64(t1.Max_1, 7) IN (toDateTime64('2026-06-01 09:00:00.0000000', 7))

