-- ClickHouse.Driver ClickHouse
ALTER TABLE
	MeasuredPeriodRow
UPDATE
	Elapsed = toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64('2026-01-10 08:15:30.0000000', 7)) - toUnixTimestamp64Nano(toDateTime64(ClosedOn, 7)), toInt64(100))) / toFloat64(864000000000)
WHERE
	Id = 1

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.ClosedOn,
	t1.Elapsed
FROM
	MeasuredPeriodRow t1
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	MeasuredPeriodRow r
WHERE
	r.Elapsed < toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64('2026-01-10 08:15:30.0000000', 7)) - toUnixTimestamp64Nano(toDateTime64(r.ClosedOn, 7)), toInt64(100))) / toFloat64(36000000000)

-- ClickHouse.Driver ClickHouse
ALTER TABLE
	MeasuredPeriodRow
UPDATE
	Elapsed = toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(ClosedOn, 7)) - toUnixTimestamp64Nano(toDateTime64('2026-01-10 08:15:30.0000000', 7)), toInt64(100))) / toFloat64(36000000000)
WHERE
	Id = 1

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.ClosedOn,
	t1.Elapsed
FROM
	MeasuredPeriodRow t1
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	MeasuredPeriodRow r
WHERE
	r.Elapsed < toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(r.ClosedOn, 7)) - toUnixTimestamp64Nano(toDateTime64('2026-01-10 08:15:30.0000000', 7)), toInt64(100))) / toFloat64(864000000000)

