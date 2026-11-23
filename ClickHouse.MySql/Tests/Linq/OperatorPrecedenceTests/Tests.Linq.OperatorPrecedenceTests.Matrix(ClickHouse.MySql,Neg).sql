-- ClickHouse.MySql ClickHouse
SELECT
	negate(r.A + r.B),
	negate(r.A + r.B),
	negate(r.A - r.B),
	negate(r.A - r.B),
	negate(bitAnd(r.A, r.B)),
	negate(bitAnd(r.A, r.B)),
	negate(bitOr(r.A, r.B)),
	negate(bitOr(r.A, r.B)),
	negate(bitXor(r.A, r.B)),
	negate(bitXor(r.A, r.B)),
	negate(negate(r.B)),
	negate(bitNot(r.B)),
	negate(-5),
	negate(-5 * r.B)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.MySql ClickHouse
SELECT
	negate(-5)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

