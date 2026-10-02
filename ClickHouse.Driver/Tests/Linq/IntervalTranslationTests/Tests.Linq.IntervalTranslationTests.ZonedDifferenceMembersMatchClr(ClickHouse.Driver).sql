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
	toDateTime64('2026-01-03 13:04:05.006000', 6)
)

-- ClickHouse.Driver ClickHouse
SELECT
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100)), toInt64(864000000000))),
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100)), toInt64(36000000000)) % toInt64(24)),
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100)), toInt64(600000000)) % toInt64(60)),
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100)), toInt64(10000000)) % toInt64(60)),
	intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100)),
	toFloat64(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100))) / toFloat64(864000000000),
	toFloat64(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100))) / toFloat64(36000000000),
	toFloat64(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100))) / toFloat64(600000000),
	toFloat64(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100))) / toFloat64(10000000),
	toFloat64(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100))) / toFloat64(10000)
FROM
	ZonedEventRow r
LIMIT 2

