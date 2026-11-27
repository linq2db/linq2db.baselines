-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	ShiftedDateRow r
WHERE
	r.Plain = r.Date

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	ShiftedDateRow r
WHERE
	r.Plain < r.Date

