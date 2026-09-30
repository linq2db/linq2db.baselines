-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	Issue5777Row r
WHERE
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(r.ClosedOnNullable, 7)) - toUnixTimestamp64Nano(toDateTime64(r.OpenedOn, 7)), toInt64(100))) / toFloat64(864000000000) > toFloat64(0)

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	Issue5777Row r
WHERE
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(r.ClosedOnNullable, 7)) - toUnixTimestamp64Nano(toDateTime64(r.OpenedOn, 7)), toInt64(100))) / toFloat64(36000000000) > toFloat64(0)

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	Issue5777Row r
WHERE
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(toDateTime64('2026-09-30 00:00:00.0000000', 7), 7)) - toUnixTimestamp64Nano(toDateTime64(r.ClosedOnNullable, 7)), toInt64(100))) / toFloat64(864000000000) > toFloat64(0)

-- ClickHouse.Driver ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(r.ClosedOnNullable, 7)) - toUnixTimestamp64Nano(toDateTime64(r.OpenedOn, 7)), toInt64(100))) / toFloat64(36000000000)
FROM
	Issue5777Row r
WHERE
	r.Id = 1
LIMIT 2

