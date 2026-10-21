-- ClickHouse.Driver ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100))) / toFloat64(36000000000)
FROM
	EventRow r

-- ClickHouse.Driver ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(now(), 7)) - toUnixTimestamp64Nano(r.StartedOn), toInt64(100))) / toFloat64(36000000000)
FROM
	EventRow r

-- ClickHouse.Driver ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(r.FinishedOn) - toUnixTimestamp64Nano(toDateTime64(makeDateTime(2026, 6, 1, 10, 0, 0), 7)), toInt64(100))) / toFloat64(36000000000)
FROM
	EventRow r

-- ClickHouse.Driver ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(r.FinishedOn, 7)) - toUnixTimestamp64Nano(toDateTime64(r.StartedOn, 7)), toInt64(100))) / toFloat64(36000000000)
FROM
	CoarseEventRow r

