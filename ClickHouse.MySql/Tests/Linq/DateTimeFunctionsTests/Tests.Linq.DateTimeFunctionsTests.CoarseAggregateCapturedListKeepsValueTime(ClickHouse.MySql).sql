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
			MAX(g_1.Value) as Max_1
		FROM
			CoarseDateShapesRow g_1
		GROUP BY
			g_1.Id
	) t1
WHERE
	toDateTime64(t1.Max_1, 7) IN (toDateTime64('2026-06-01 10:00:00.5000000', 7))

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX(g_1.Value) as Max_1
		FROM
			CoarseDateShapesRow g_1
		GROUP BY
			g_1.Id
	) t1
WHERE
	toDateTime64(t1.Max_1, 7) IN (toDateTime64('2026-06-01 10:00:00.0000000', 7))

