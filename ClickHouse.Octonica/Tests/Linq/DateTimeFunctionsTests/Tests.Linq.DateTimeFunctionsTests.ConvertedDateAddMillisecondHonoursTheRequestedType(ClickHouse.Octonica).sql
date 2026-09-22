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
	toDateTime64('2026-06-01 10:00:00.0000000', 7)
)

-- ClickHouse.Octonica ClickHouse
SELECT
	toDateTime(fromUnixTimestamp64Nano(toUnixTimestamp64Nano(toDateTime64(r.Value, 7)) + toInt64(toFloat64(226000000))))
FROM
	ClickHouseDateShapesRow r
LIMIT 2

