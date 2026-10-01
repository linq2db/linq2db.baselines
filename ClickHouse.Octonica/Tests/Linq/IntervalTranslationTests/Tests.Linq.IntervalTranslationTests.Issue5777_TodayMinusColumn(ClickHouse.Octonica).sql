-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	Issue5777Row r
WHERE
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(toDateTime64('2026-10-01 00:00:00.0000000', 7), 7)) - toUnixTimestamp64Nano(toDateTime64(r.ClosedOn, 7)), toInt64(100))) / toFloat64(864000000000) > toFloat64(0)

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	Issue5777Row r
WHERE
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(toDateTime64('2026-10-01 00:00:00.0000000', 7), 7)) - toUnixTimestamp64Nano(toDateTime64(r.ClosedOn, 7)), toInt64(100))) / toFloat64(36000000000) > toFloat64(0)

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	Issue5777Row r
WHERE
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(toDateTime64('2026-10-01 00:00:00.0000000', 7), 7)) - toUnixTimestamp64Nano(toDateTime64(r.ClosedOn, 7)), toInt64(100))) / toFloat64(600000000) > toFloat64(0)

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	Issue5777Row r
WHERE
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(toDateTime64(toDateTime64('2026-10-01 00:00:00.0000000', 7), 7)) - toUnixTimestamp64Nano(toDateTime64(r.ClosedOn, 7)), toInt64(100)), toInt64(864000000000))) > 0

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	Issue5777Row r
WHERE
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(toDateTime64('2026-10-01 00:00:00.0000000', 7), 7)) - toUnixTimestamp64Nano(toDateTime64(r.ClosedOnNullable, 7)), toInt64(100))) / toFloat64(864000000000) > toFloat64(0)

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	Issue5777Row r
ORDER BY
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(toDateTime64('2026-10-01 00:00:00.0000000', 7), 7)) - toUnixTimestamp64Nano(toDateTime64(r.ClosedOn, 7)), toInt64(100))) / toFloat64(864000000000)

-- ClickHouse.Octonica ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(toDateTime64('2026-10-01 00:00:00.0000000', 7), 7)) - toUnixTimestamp64Nano(toDateTime64(r.ClosedOn, 7)), toInt64(100))) / toFloat64(864000000000)
FROM
	Issue5777Row r
ORDER BY
	r.Id

