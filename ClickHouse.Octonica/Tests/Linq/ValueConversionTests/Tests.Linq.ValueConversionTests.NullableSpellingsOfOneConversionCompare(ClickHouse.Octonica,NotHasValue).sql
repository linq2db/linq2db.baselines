-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	ShiftedDateRow r
WHERE
	r.Plain = r.Date

