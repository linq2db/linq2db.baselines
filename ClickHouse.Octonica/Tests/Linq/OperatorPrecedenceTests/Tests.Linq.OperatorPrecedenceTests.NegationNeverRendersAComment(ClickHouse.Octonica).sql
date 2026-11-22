-- ClickHouse.Octonica ClickHouse
SELECT
	negate(-5 * r.A),
	negate(r.A * -5),
	negate(r.A - -5),
	negate(-5) + r.A,
	negate(negate(r.A) + r.B)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

