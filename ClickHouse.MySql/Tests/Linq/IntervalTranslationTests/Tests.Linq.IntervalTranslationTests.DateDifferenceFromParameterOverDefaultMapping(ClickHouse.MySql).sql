-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	ClosedPeriodRow r
WHERE
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64('2026-01-10 08:15:30.0000000', 7)) - toUnixTimestamp64Nano(r.ClosedOn), toInt64(100))) / toFloat64(864000000000) > toFloat64(0)

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	ClosedPeriodRow r
WHERE
	toFloat64(intDiv(toUnixTimestamp64Nano(r.ClosedOn) - toUnixTimestamp64Nano(toDateTime64('2026-01-10 08:15:30.0000000', 7)), toInt64(100))) / toFloat64(36000000000) > toFloat64(0)

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	ClosedPeriodRow r
ORDER BY
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64('2026-01-10 08:15:30.0000000', 7)) - toUnixTimestamp64Nano(r.ClosedOn), toInt64(100))) / toFloat64(600000000)

-- ClickHouse.MySql ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(r.ClosedOn) - toUnixTimestamp64Nano(toDateTime64('2026-01-10 08:15:30.0000000', 7)), toInt64(100))) / toFloat64(36000000000)
FROM
	ClosedPeriodRow r
WHERE
	r.Id = 1
LIMIT 2

