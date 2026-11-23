-- ClickHouse.Octonica ClickHouse
SELECT
	bitNot(r.A + r.B),
	bitNot(r.A + r.B),
	bitNot(r.A - r.B),
	bitNot(r.A - r.B),
	bitNot(r.A * r.B),
	bitNot(r.A * r.B),
	bitNot(intDiv(r.A, r.B)),
	bitNot(intDiv(r.A, r.B)),
	bitNot(bitAnd(r.A, r.B)),
	bitNot(bitAnd(r.A, r.B)),
	bitNot(bitOr(r.A, r.B)),
	bitNot(bitOr(r.A, r.B)),
	bitNot(negate(r.B)),
	bitNot(bitNot(r.B)),
	bitNot(-5),
	bitNot(-5 * r.B)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitNot(-5)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

