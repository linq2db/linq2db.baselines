-- ClickHouse.Driver ClickHouse
SELECT
	r.Value
FROM
	CoarseConvertedRow r
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	COUNT(*)
FROM
	CoarseConvertedRow r
WHERE
	r.Value = toDateTime('2026-06-01 09:00:00')

-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
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

