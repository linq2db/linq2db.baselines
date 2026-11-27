-- ClickHouse.Driver ClickHouse
SELECT
	r.Dto
FROM
	ZonedRow r
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT
	toDate32(r.Dto)
FROM
	ZonedRow r
LIMIT 2

-- ClickHouse.Driver ClickHouse
SELECT DISTINCT
	toDate32(g_1.Dto)
FROM
	ZonedRow g_1
LIMIT 2

