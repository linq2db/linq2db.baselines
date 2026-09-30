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
	toDateTime64('2026-01-05 00:00:00.0000000', 7)
)

-- ClickHouse.MySql ClickHouse
INSERT INTO EventRow
(
	Id,
	StartedOn,
	FinishedOn
)
VALUES
(
	2,
	toDateTime64('2026-01-03 00:00:00.0000000', 7),
	toDateTime64('2026-01-03 20:00:00.0000000', 7)
)

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	EventRow r
WHERE
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(toDateTime64('2026-01-03 13:30:00.0000000', 7), 7)) - toUnixTimestamp64Nano(toDateTime64(r.StartedOn, 7)), toInt64(100))) / toFloat64(36000000000) > toFloat64(24)

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	EventRow r
WHERE
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(r.FinishedOn, 7)) - toUnixTimestamp64Nano(toDateTime64(toDateTime64('2026-01-03 13:30:00.0000000', 7), 7)), toInt64(100))) / toFloat64(36000000000) > toFloat64(24)

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	EventRow r
ORDER BY
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(toDateTime64('2026-01-03 13:30:00.0000000', 7), 7)) - toUnixTimestamp64Nano(toDateTime64(r.StartedOn, 7)), toInt64(100))) / toFloat64(600000000)

-- ClickHouse.MySql ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(toDateTime64('2026-01-03 13:30:00.0000000', 7), 7)) - toUnixTimestamp64Nano(toDateTime64(r.StartedOn, 7)), toInt64(100))) / toFloat64(864000000000),
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(toDateTime64(toDateTime64('2026-01-03 13:30:00.0000000', 7), 7)) - toUnixTimestamp64Nano(toDateTime64(r.StartedOn, 7)), toInt64(100)), toInt64(36000000000)) % toInt64(24))
FROM
	EventRow r
WHERE
	r.Id = 1
LIMIT 2

