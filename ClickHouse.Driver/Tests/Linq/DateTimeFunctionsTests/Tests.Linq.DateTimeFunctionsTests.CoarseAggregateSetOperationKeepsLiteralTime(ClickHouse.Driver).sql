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
SELECT
	MAX(g_1.Day) as c1
FROM
	CoarseDateShapesRow g_1
GROUP BY
	g_1.Id
UNION ALL
SELECT
	toDateTime64(toDateTime64('2026-06-01 10:00:00.0000000', 7), 7) as c1
FROM
	CoarseDateShapesRow r

-- ClickHouse.Driver ClickHouse
SELECT
	MAX(g_1.Value) as c1
FROM
	CoarseDateShapesRow g_1
GROUP BY
	g_1.Id
UNION ALL
SELECT
	toDateTime64(toDateTime64('2026-06-01 10:00:00.5000000', 7), 7) as c1
FROM
	CoarseDateShapesRow r

