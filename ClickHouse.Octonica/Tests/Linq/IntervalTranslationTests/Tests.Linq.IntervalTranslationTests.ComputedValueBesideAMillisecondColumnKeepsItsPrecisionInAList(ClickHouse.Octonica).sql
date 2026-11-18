-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	MillisecondRow r
WHERE
	toDateTime64(fromUnixTimestamp64Nano(toUnixTimestamp64Nano(toDateTime64(r.At, 7)) + toInt64(toFloat64(400000))), 7) IN (toDateTime64('2026-06-01 10:00:00.1000000', 7))

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	MillisecondRow r
WHERE
	toDateTime64(fromUnixTimestamp64Nano(toUnixTimestamp64Nano(toDateTime64(r.At, 7)) + toInt64(toFloat64(400000))), 7) IN (toDateTime64('2026-06-01 10:00:00.1000000', 7))

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	MillisecondRow r
WHERE
	toDateTime64(fromUnixTimestamp64Nano(toUnixTimestamp64Nano(toDateTime64(r.At, 7)) + toInt64(toFloat64(400000))), 7) IN (toDateTime64('2026-06-01 10:00:00.1004000', 7))

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	MillisecondRow r
WHERE
	toDateTime64(fromUnixTimestamp64Nano(toUnixTimestamp64Nano(toDateTime64(r.At, 7)) + toInt64(toFloat64(400000))), 7) IN (toDateTime64('2026-06-01 10:00:00.1004000', 7))

