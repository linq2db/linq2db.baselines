-- ClickHouse.Octonica ClickHouse
INSERT INTO ClickHouseDateShapesRow
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
	toDateTime64('1969-01-01 00:00:00.5000000', 7)
)

-- ClickHouse.Octonica ClickHouse
SELECT
	(toUnixTimestamp64Milli(r.Wide) % 1000 + 1000) % 1000
FROM
	ClickHouseDateShapesRow r
LIMIT 2

-- ClickHouse.Octonica ClickHouse
SELECT
	(toUnixTimestamp64Milli(r.Wide) % 1000 + 1000) % 1000
FROM
	ClickHouseDateShapesRow r
LIMIT 2

