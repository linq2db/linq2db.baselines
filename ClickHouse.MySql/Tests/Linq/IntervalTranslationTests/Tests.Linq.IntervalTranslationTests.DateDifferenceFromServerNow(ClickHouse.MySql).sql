-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	ClosedPeriodRow r
WHERE
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(now(), 7)) - toUnixTimestamp64Nano(r.ClosedOn), toInt64(100))) / toFloat64(864000000000) > toFloat64(300)

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	ClosedPeriodRow r
ORDER BY
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(now(), 7)) - toUnixTimestamp64Nano(r.ClosedOn), toInt64(100))) / toFloat64(864000000000)

-- ClickHouse.MySql ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(now(), 7)) - toUnixTimestamp64Nano(r.ClosedOn), toInt64(100))) / toFloat64(864000000000),
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(toDateTime64(now(), 7)) - toUnixTimestamp64Nano(r.ClosedOn), toInt64(100)), toInt64(36000000000)) % toInt64(24))
FROM
	ClosedPeriodRow r
WHERE
	r.Id = 1
LIMIT 2

