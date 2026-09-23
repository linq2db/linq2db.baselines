-- ClickHouse.MySql ClickHouse
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
	toDateTime64('2026-06-01 10:00:00.0000000', 7)
)

-- ClickHouse.MySql ClickHouse
SELECT
	(toUnixTimestamp64Milli(toDateTime64(r.Day, 7)) % toInt64(1000) + 1000) % 1000
FROM
	ClickHouseDateShapesRow r
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	(toUnixTimestamp64Milli(toDateTime64(r.Day, 7)) % toInt64(1000) + 1000) % 1000
FROM
	ClickHouseDateShapesRow r
LIMIT 2

