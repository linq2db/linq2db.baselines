-- ClickHouse.Driver ClickHouse
SELECT
	intDiv(r.A + r.B, r.C),
	intDiv(r.A, r.B + r.C),
	intDiv(r.A + r.B, r.C),
	intDiv(r.A, r.B + r.C),
	intDiv(r.A - r.B, r.C),
	intDiv(r.A, r.B - r.C),
	intDiv(r.A - r.B, r.C),
	intDiv(r.A, r.B - r.C),
	intDiv(r.A, r.B * r.C),
	intDiv(r.A, r.B * r.C),
	intDiv(intDiv(r.A, r.B), r.C),
	intDiv(r.A, intDiv(r.B, r.C)),
	intDiv(intDiv(r.A, r.B), r.C),
	intDiv(r.A, intDiv(r.B, r.C)),
	intDiv(r.A, bitXor(r.B, r.C)),
	intDiv(r.A, bitXor(r.B, r.C)),
	intDiv(r.A + r.B, r.C),
	intDiv(r.A, r.B + r.C),
	intDiv(r.A + -6, r.C),
	intDiv(r.A - r.B, r.C),
	intDiv(r.A, r.B - r.C),
	intDiv(r.A - -6, r.C),
	intDiv(r.A * r.B, r.C),
	intDiv(r.A, r.B * r.C),
	intDiv(r.A * -6, r.C),
	intDiv(r.A / r.B, r.C),
	intDiv(r.A, r.B / r.C),
	intDiv(r.A / -6, r.C),
	intDiv(r.A + r.B, r.C),
	intDiv(r.A, r.B + r.C),
	intDiv(r.A + -6, r.C),
	intDiv(r.A, negate(r.B)),
	intDiv(r.A + negate(r.B), r.C),
	intDiv(r.A - negate(r.B), r.C),
	intDiv(intDiv(r.A, negate(r.B)), r.C),
	intDiv(bitAnd(r.A, negate(r.B)), r.C),
	intDiv(bitXor(r.A, negate(r.B)), r.C),
	intDiv(r.A * bitNot(r.B), r.C),
	intDiv(r.A * -5, r.C),
	intDiv(bitAnd(r.A, -5), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	intDiv(r.A * -5, r.C),
	intDiv(bitAnd(r.A, -5), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

