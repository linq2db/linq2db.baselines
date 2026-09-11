-- ClickHouse.MySql ClickHouse
INSERT INTO EventRow
(
	Id,
	StartedOn,
	FinishedOn
)
VALUES
(
	1,
	toDateTime64('2026-01-01 10:00:00.0000000', 7),
	toDateTime64('2026-01-03 13:30:00.0000000', 7)
)

-- ClickHouse.MySql ClickHouse
SELECT
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100)), toInt64(864000000000))),
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100)), toInt64(36000000000)) % toInt64(24)),
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100)), toInt64(600000000)) % toInt64(60)),
	toFloat64(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100))) / toFloat64(36000000000)
FROM
	EventRow r
LIMIT 2

