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
	toDate32(r.Value) as Date_1
FROM
	CoarseDateShapesRow r
UNION ALL
SELECT
	toDate32(toDate32('2026-06-01')) as Date_1
FROM
	CoarseDateShapesRow r_1

