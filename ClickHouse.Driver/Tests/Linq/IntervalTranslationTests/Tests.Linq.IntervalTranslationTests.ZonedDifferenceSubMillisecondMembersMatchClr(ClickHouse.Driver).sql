-- ClickHouse.Driver ClickHouse
INSERT INTO ZonedEventRow
(
	Id,
	StartedOn,
	FinishedOn
)
VALUES
(
	1,
	toDateTime64('2026-01-01 10:00:00.000000', 6),
	toDateTime64('2026-01-01 10:00:00.006456', 6)
)

-- ClickHouse.Driver ClickHouse
SELECT
	r.StartedOn,
	r.FinishedOn
FROM
	ZonedEventRow r
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100)), toInt64(10)) % toInt64(1000)),
	toInt32((intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100)) % toInt64(10)) * toInt64(100)),
	toFloat64(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100))) / toFloat64(10),
	toFloat64(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100))) * toFloat64(100)
FROM
	ZonedEventRow r
LIMIT 2

