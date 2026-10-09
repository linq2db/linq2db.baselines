-- ClickHouse.MySql ClickHouse
ALTER TABLE
	MeasuredPeriodRow
UPDATE
	Elapsed = toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64('2026-01-10 08:15:30.0000000', 7)) - toUnixTimestamp64Nano(ClosedOn), toInt64(100))) / toFloat64(864000000000)
WHERE
	Id = 1

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.ClosedOn,
	t1.Elapsed
FROM
	MeasuredPeriodRow t1
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	MeasuredPeriodRow r
WHERE
	r.Elapsed < toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64('2026-01-10 08:15:30.0000000', 7)) - toUnixTimestamp64Nano(r.ClosedOn), toInt64(100))) / toFloat64(36000000000)

-- ClickHouse.MySql ClickHouse
ALTER TABLE
	MeasuredPeriodRow
UPDATE
	Elapsed = toFloat64(intDiv(toUnixTimestamp64Nano(ClosedOn) - toUnixTimestamp64Nano(toDateTime64('2026-01-10 08:15:30.0000000', 7)), toInt64(100))) / toFloat64(36000000000)
WHERE
	Id = 1

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.ClosedOn,
	t1.Elapsed
FROM
	MeasuredPeriodRow t1
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	MeasuredPeriodRow r
WHERE
	r.Elapsed < toFloat64(intDiv(toUnixTimestamp64Nano(r.ClosedOn) - toUnixTimestamp64Nano(toDateTime64('2026-01-10 08:15:30.0000000', 7)), toInt64(100))) / toFloat64(864000000000)

