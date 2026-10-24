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
	toDateTime64('2026-01-01 10:20:30.0000000', 7),
	toDateTime64('2026-01-01 10:20:30.1234567', 7)
)

-- ClickHouse.MySql ClickHouse
SELECT
	r.FinishedOn
FROM
	EventRow r
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(toDateTime64(r.FinishedOn, 7)) - toUnixTimestamp64Nano(toDateTime64(r.StartedOn, 7)), toInt64(100)), toInt64(10000)) % toInt64(1000)),
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(toDateTime64(r.FinishedOn, 7)) - toUnixTimestamp64Nano(toDateTime64(r.StartedOn, 7)), toInt64(100)), toInt64(10000000)) % toInt64(60))
FROM
	EventRow r
LIMIT 2

