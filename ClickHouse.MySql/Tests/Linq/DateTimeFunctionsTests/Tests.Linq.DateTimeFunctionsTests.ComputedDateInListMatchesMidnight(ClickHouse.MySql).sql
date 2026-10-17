-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	CoarseDayPairRow r
WHERE
	toDateTime64(Coalesce(r.ClosedOn, r.OpenedOn), 7) IN (toDateTime64('2026-06-01 00:00:00.0000000', 7))

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	CoarseDayPairRow r
WHERE
	toDateTime64(Coalesce(r.ClosedOn, r.OpenedOn), 7) IN (toDateTime64('2026-06-01 00:00:00.0000000', 7))

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	CoarseDayPairRow r
WHERE
	toDateTime64(toDate(r.Value), 7) IN (toDateTime64('2026-06-01 00:00:00.0000000', 7))

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	CoarseDayPairRow r
WHERE
	toDateTime64(Coalesce(r.ClosedOn, r.OpenedOn), 7) IN (toDateTime64('2026-06-01 10:00:00.0000000', 7))

