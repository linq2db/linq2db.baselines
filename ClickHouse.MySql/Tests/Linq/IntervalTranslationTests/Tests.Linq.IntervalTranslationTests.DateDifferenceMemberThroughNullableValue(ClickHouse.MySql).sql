-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	ClosedPeriodRow r
WHERE
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(r.ClosedOnNullable, 7)) - toUnixTimestamp64Nano(toDateTime64(r.OpenedOn, 7)), toInt64(100))) / toFloat64(864000000000) > toFloat64(0)

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	ClosedPeriodRow r
WHERE
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(r.ClosedOnNullable, 7)) - toUnixTimestamp64Nano(toDateTime64(r.OpenedOn, 7)), toInt64(100))) / toFloat64(36000000000) > toFloat64(0)

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	ClosedPeriodRow r
WHERE
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(toDateTime64('2026-01-03 13:30:00.0000000', 7), 7)) - toUnixTimestamp64Nano(toDateTime64(r.ClosedOnNullable, 7)), toInt64(100))) / toFloat64(864000000000) > toFloat64(0)

-- ClickHouse.MySql ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(r.ClosedOnNullable, 7)) - toUnixTimestamp64Nano(toDateTime64(r.OpenedOn, 7)), toInt64(100))) / toFloat64(36000000000)
FROM
	ClosedPeriodRow r
WHERE
	r.Id = 1
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	ClosedPeriodRow r
WHERE
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(toDateTime64(r.ClosedOnNullable, 7)) - toUnixTimestamp64Nano(toDateTime64(r.OpenedOn, 7)), toInt64(100)), toInt64(864000000000))) > 0

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	ClosedPeriodRow r
WHERE
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(toDateTime64(r.ClosedOnNullable, 7)) - toUnixTimestamp64Nano(toDateTime64(r.OpenedOn, 7)), toInt64(100)), toInt64(36000000000)) % toInt64(24)) > 0

-- ClickHouse.MySql ClickHouse
SELECT
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(toDateTime64(r.ClosedOnNullable, 7)) - toUnixTimestamp64Nano(toDateTime64(r.OpenedOn, 7)), toInt64(100)), toInt64(864000000000))),
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(toDateTime64(r.ClosedOnNullable, 7)) - toUnixTimestamp64Nano(toDateTime64(r.OpenedOn, 7)), toInt64(100)), toInt64(36000000000)) % toInt64(24))
FROM
	ClosedPeriodRow r
ORDER BY
	r.Id

