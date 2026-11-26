-- ClickHouse.MySql ClickHouse
SELECT
	r.Dto
FROM
	ZonedRow r
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	ZonedRow r
WHERE
	toDate32(r.Dto) = toDateTime64('2020-12-31 00:00:00.0000000', 7)

-- ClickHouse.MySql ClickHouse
SELECT
	COUNT(*)
FROM
	ZonedRow r
WHERE
	toDate32(r.Dto) = toDateTime64('2020-12-31 01:00:00.0000000', 7)

