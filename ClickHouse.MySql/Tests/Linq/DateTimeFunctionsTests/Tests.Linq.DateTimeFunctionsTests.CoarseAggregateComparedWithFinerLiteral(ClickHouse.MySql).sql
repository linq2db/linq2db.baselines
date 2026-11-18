-- ClickHouse.MySql ClickHouse
INSERT INTO CoarseDateShapesRow
(
	Id,
	Value,
	Day,
	Wide
)
VALUES
(
	1,
	toDateTime('2026-06-01 10:00:00'),
	toDate32('2026-06-01'),
	toDateTime64('2026-06-01 10:00:00.0000000', 7)
)

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			CoarseDateShapesRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1.Day) < toDateTime64('2026-06-01 10:00:00.0000000', 7)
	) t1

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			CoarseDateShapesRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MIN(g_1.Day) >= toDateTime64('2026-06-01 10:00:00.0000000', 7)
	) t1

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			CoarseDateShapesRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1.Value) < toDateTime64('2026-06-01 10:00:00.5000000', 7)
	) t1

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT
			g_1.Id as Id
		FROM
			CoarseDateShapesRow g_1
		GROUP BY
			g_1.Id
		HAVING
			MAX(g_1.Value) = toDateTime64('2026-06-01 10:00:00.5000000', 7)
	) t1

