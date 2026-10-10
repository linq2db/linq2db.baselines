-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	CoarseDateShapesRow r
WHERE
	toDate(r.Value) = toDateTime64('2026-06-01 00:00:00.0000000', 7)

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	CoarseDateShapesRow r
WHERE
	toDate(r.Value) < toDateTime64('2026-06-01 00:00:00.0000000', 7)

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	CoarseDateShapesRow r
WHERE
	toDateTime64('2026-06-01 00:00:00.0000000', 7) = toDate(r.Value)

