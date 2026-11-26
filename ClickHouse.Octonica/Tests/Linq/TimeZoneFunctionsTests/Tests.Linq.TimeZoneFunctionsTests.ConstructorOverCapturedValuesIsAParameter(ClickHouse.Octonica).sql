-- ClickHouse.Octonica ClickHouse
SELECT
	r.Dto
FROM
	ZonedRow r
LIMIT 2

-- ClickHouse.Octonica ClickHouse
SELECT
	COUNT(*)
FROM
	ZonedRow r
WHERE
	r.Dto = toDateTime64('2020-06-15 11:20:00.0000000', 7, 'UTC')

