-- ClickHouse.Driver ClickHouse
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

-- ClickHouse.Driver ClickHouse
WITH CTE_1 AS
(
	SELECT
		MAX(g_1.Day) as Day_1
	FROM
		CoarseDateShapesRow g_1
	GROUP BY
		g_1.Id
)
SELECT
	COUNT(*)
FROM
	CTE_1 t1
WHERE
	t1.Day_1 < toDateTime64('2026-06-01 10:00:00.0000000', 7)

-- ClickHouse.Driver ClickHouse
WITH CTE_1 AS
(
	SELECT
		MAX(g_1.Day) as Day_1,
		MAX(g_1.Value) as Value_1
	FROM
		CoarseDateShapesRow g_1
	GROUP BY
		g_1.Id
)
SELECT
	COUNT(*)
FROM
	CTE_1 t1
WHERE
	t1.Value_1 < toDateTime64('2026-06-01 10:00:00.5000000', 7)

-- ClickHouse.Driver ClickHouse
WITH CTE_1 AS
(
	SELECT
		MAX(g_1.Day) as Day_1,
		MAX(g_1.Value) as Value_1
	FROM
		CoarseDateShapesRow g_1
	GROUP BY
		g_1.Id
)
SELECT
	COUNT(*)
FROM
	CTE_1 t1
WHERE
	t1.Value_1 = toDateTime64('2026-06-01 10:00:00.5000000', 7)

