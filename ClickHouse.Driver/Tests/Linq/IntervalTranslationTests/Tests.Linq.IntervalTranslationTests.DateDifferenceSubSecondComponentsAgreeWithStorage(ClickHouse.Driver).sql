-- ClickHouse.Driver ClickHouse
INSERT INTO EventRow
(
	Id,
	StartedOn,
	FinishedOn
)
VALUES
(
	1,
	toDateTime64('2026-01-01 10:20:30.0000000', 7),
	toDateTime64('2026-01-01 10:20:30.1234567', 7)
)

-- ClickHouse.Driver ClickHouse
SELECT
	r.FinishedOn
FROM
	EventRow r
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100)), toInt64(10000)) % toInt64(1000)),
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100)), toInt64(10000000)) % toInt64(60))
FROM
	EventRow r
LIMIT 2

