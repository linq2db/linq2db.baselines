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
	toDateTime64('1970-01-02 00:00:00.0000000', 7),
	toDateTime64('2045-06-05 04:03:02.0000000', 7)
)

-- ClickHouse.Driver ClickHouse
INSERT INTO EventRow
(
	Id,
	StartedOn,
	FinishedOn
)
VALUES
(
	2,
	toDateTime64('1970-01-02 00:00:00.0000000', 7),
	toDateTime64('1970-01-02 00:02:05.0000000', 7)
)

-- ClickHouse.Driver ClickHouse
SELECT
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(toDateTime64(r.FinishedOn, 7)) - toUnixTimestamp64Nano(toDateTime64(r.StartedOn, 7)), toInt64(100)), toInt64(36000000000)) % toInt64(24))
FROM
	EventRow r
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(toDateTime64(r.FinishedOn, 7)) - toUnixTimestamp64Nano(toDateTime64(r.StartedOn, 7)), toInt64(100)), toInt64(600000000)) % toInt64(60))
FROM
	EventRow r
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(toDateTime64(r.FinishedOn, 7)) - toUnixTimestamp64Nano(toDateTime64(r.StartedOn, 7)), toInt64(100)), toInt64(10000000)) % toInt64(60))
FROM
	EventRow r
ORDER BY
	r.Id

