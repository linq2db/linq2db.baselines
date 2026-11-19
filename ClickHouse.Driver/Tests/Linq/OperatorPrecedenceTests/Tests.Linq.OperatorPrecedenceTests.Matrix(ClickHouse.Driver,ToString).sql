-- ClickHouse.Driver ClickHouse
SELECT
	toString(r.A + r.B),
	toString(r.A - r.B),
	toString(r.A * r.B),
	toString(r.A / r.B),
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

-- cell ToString/ToString(Add(a,b)): green
-- cell ToString/ToString(Sub(a,b)): green
-- cell ToString/ToString(Mul(a,b)): green
-- cell ToString/ToString(Div(a,b)): red
-- cell ToString/ToString(Mod(a,b)): green
-- cell ToString/ToString(And(a,b)): green
-- cell ToString/ToString(Or(a,b)): green
-- cell ToString/ToString(Xor(a,b)): green
-- cell ToString/ToString(Neg(a)): green
-- cell ToString/ToString(Not(a)): green
