-- ClickHouse.Driver ClickHouse
SELECT
	toString(r.A + r.B),
	toString(r.A - r.B),
	toString(r.A * r.B),
	toString(intDiv(r.A, r.B)),
	toString(r.A % r.B),
	toString(bitAnd(r.A, r.B)),
	toString(bitOr(r.A, r.B)),
	toString(bitXor(r.A, r.B)),
	toString(negate(r.A)),
	toString(bitNot(r.A))
FROM
	PrecedenceRow r
ORDER BY
	r.Id

