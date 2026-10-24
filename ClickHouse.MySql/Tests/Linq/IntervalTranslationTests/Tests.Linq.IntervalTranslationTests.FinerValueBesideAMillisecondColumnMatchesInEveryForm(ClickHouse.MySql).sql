-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	MillisecondRow r
WHERE
	r.At = toDateTime64('2026-06-01 10:00:00.100', 3)

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	MillisecondRow r
WHERE
	toDateTime64(r.At, 3) IN (toDateTime64('2026-06-01 10:00:00.100', 3), toDateTime64('2026-06-01 11:00:00.100', 3))

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	MillisecondRow r
WHERE
	toDateTime64(r.At, 3) IN (toDateTime64('2026-06-01 10:00:00.100', 3))

