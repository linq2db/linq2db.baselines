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
	toInt64((toUnixTimestamp64Nano(toDateTime64(r.Value, 7)) - toUnixTimestamp64Nano(toDateTime64(toDate32(r.Value), 7))) / 100)
FROM
	CoarseDateShapesRow r
LIMIT 2

