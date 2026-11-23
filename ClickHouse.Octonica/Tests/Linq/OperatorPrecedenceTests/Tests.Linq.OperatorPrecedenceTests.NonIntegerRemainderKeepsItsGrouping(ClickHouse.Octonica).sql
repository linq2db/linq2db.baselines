-- ClickHouse.Octonica ClickHouse
SELECT
	toFloat64(r.A) % (r.B + r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

