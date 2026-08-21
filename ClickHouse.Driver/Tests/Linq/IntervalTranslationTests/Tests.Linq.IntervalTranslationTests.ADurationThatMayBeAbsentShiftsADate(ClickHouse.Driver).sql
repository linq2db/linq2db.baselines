-- ClickHouse.Driver ClickHouse
SELECT
	r.Id,
	toDateTime64('2026-03-01 00:00:00.0000000', 7) + toIntervalNanosecond((r.Grace * toInt64(10000000)) * toInt64(100)),
	toDateTime64('2026-03-01 00:00:00.0000000', 7) + toIntervalNanosecond((r.Required * toInt64(10000000)) * toInt64(100))
FROM
	OptionalDurationRow r
ORDER BY
	r.Id

