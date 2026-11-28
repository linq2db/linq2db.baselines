-- ClickHouse.MySql ClickHouse
SELECT
	r.Dto
FROM
	ZonedRow r
LIMIT 2

-- ClickHouse.MySql ClickHouse
SELECT
	toInt64((toUnixTimestamp64Nano(toDateTime64(r.Dto, 7)) - toUnixTimestamp64Nano(toDateTime64(toDate32(r.Dto), 7))) / 100)
FROM
	ZonedRow r
LIMIT 2

