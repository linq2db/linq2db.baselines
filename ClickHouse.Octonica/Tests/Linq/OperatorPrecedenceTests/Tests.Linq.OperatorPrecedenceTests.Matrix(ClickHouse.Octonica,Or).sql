-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A + r.B, r.C),
	bitOr(r.A, r.B + r.C),
	bitOr(r.A + r.B, r.C),
	bitOr(r.A, r.B + r.C),
	bitOr(r.A - r.B, r.C),
	bitOr(r.A, r.B - r.C),
	bitOr(r.A - r.B, r.C),
	bitOr(r.A, r.B - r.C),
	bitOr(r.A * r.B, r.C),
	bitOr(r.A, r.B * r.C),
	bitOr(r.A * r.B, r.C),
	bitOr(r.A, r.B * r.C),
	bitOr(r.A / r.B, r.C),
	bitOr(r.A, r.B / r.C),
	bitOr(r.A / r.B, r.C),
	bitOr(r.A, r.B / r.C),
	bitOr(r.A % r.B, r.C),
	bitOr(r.A, r.B % r.C),
	bitOr(r.A % r.B, r.C),
	bitOr(r.A, r.B % r.C),
	bitOr(bitAnd(r.A, r.B), r.C),
	bitOr(r.A, bitAnd(r.B, r.C)),
	bitOr(bitAnd(r.A, r.B), r.C),
	bitOr(r.A, bitAnd(r.B, r.C)),
	bitOr(bitXor(r.A, r.B), r.C),
	bitOr(r.A, bitXor(r.B, r.C)),
	bitOr(bitXor(r.A, r.B), r.C),
	bitOr(r.A, bitXor(r.B, r.C)),
	bitOr(r.A, negate(r.B)),
	bitOr(negate(r.B), r.C),
	bitOr(r.A + negate(r.B), r.C),
	bitOr(r.A - negate(r.B), r.C),
	bitOr(r.A * negate(r.B), r.C),
	bitOr(r.A / negate(r.B), r.C),
	bitOr(r.A % negate(r.B), r.C),
	bitOr(bitAnd(r.A, negate(r.B)), r.C),
	bitOr(bitOr(r.A, negate(r.B)), r.C),
	bitOr(bitXor(r.A, negate(r.B)), r.C),
	bitOr(r.A, bitNot(r.B)),
	bitOr(bitNot(r.B), r.C),
	bitOr(r.A + bitNot(r.B), r.C),
	bitOr(r.A - bitNot(r.B), r.C),
	bitOr(r.A * bitNot(r.B), r.C),
	bitOr(r.A / bitNot(r.B), r.C),
	bitOr(r.A % bitNot(r.B), r.C),
	bitOr(bitAnd(r.A, bitNot(r.B)), r.C),
	bitOr(bitOr(r.A, bitNot(r.B)), r.C),
	bitOr(bitXor(r.A, bitNot(r.B)), r.C),
	bitOr(r.A, -5),
	bitOr(-5, r.C),
	bitOr(r.A + -5, r.C),
	bitOr(r.A - -5, r.C),
	bitOr(r.A * -5, r.C),
	bitOr(r.A / -5, r.C),
	bitOr(r.A % -5, r.C),
	bitOr(bitAnd(r.A, -5), r.C),
	bitOr(bitOr(r.A, -5), r.C),
	bitOr(bitXor(r.A, -5), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A + r.B, r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A, r.B + r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A + r.B, r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A, r.B + r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A - r.B, r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A, r.B - r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A - r.B, r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A, r.B - r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A * r.B, r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A, r.B * r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A * r.B, r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A, r.B * r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A / r.B, r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A, r.B / r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A / r.B, r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A, r.B / r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A % r.B, r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A, r.B % r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A % r.B, r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A, r.B % r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(bitAnd(r.A, r.B), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A, bitAnd(r.B, r.C))
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(bitAnd(r.A, r.B), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A, bitAnd(r.B, r.C))
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(bitXor(r.A, r.B), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A, bitXor(r.B, r.C))
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(bitXor(r.A, r.B), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A, bitXor(r.B, r.C))
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A, negate(r.B))
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(negate(r.B), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A + negate(r.B), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A - negate(r.B), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A * negate(r.B), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A / negate(r.B), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A % negate(r.B), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(bitAnd(r.A, negate(r.B)), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(bitOr(r.A, negate(r.B)), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(bitXor(r.A, negate(r.B)), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A, bitNot(r.B))
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(bitNot(r.B), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A + bitNot(r.B), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A - bitNot(r.B), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A * bitNot(r.B), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A / bitNot(r.B), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A % bitNot(r.B), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(bitAnd(r.A, bitNot(r.B)), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(bitOr(r.A, bitNot(r.B)), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(bitXor(r.A, bitNot(r.B)), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A, -5)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(-5, r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A + -5, r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A - -5, r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A * -5, r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A / -5, r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A % -5, r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(bitAnd(r.A, -5), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(bitOr(r.A, -5), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(bitXor(r.A, -5), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A, -5),
	bitOr(-5, r.C),
	bitOr(r.A + -5, r.C),
	bitOr(r.A - -5, r.C),
	bitOr(r.A * -5, r.C),
	bitOr(r.A / -5, r.C),
	bitOr(r.A % -5, r.C),
	bitOr(bitAnd(r.A, -5), r.C),
	bitOr(bitOr(r.A, -5), r.C),
	bitOr(bitXor(r.A, -5), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A, -5)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(-5, r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A + -5, r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A - -5, r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A * -5, r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A / -5, r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(r.A % -5, r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(bitAnd(r.A, -5), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(bitOr(r.A, -5), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	bitOr(bitXor(r.A, -5), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- cell Or/Or(Add(a,b),c): green
-- cell Or/Or(a,Add(b,c)): green
-- cell Or/Or(AsNotNull(Add(a,b)),c): green
-- cell Or/Or(a,AsNotNull(Add(b,c))): green
-- cell Or/Or(Sub(a,b),c): green
-- cell Or/Or(a,Sub(b,c)): green
-- cell Or/Or(AsNotNull(Sub(a,b)),c): green
-- cell Or/Or(a,AsNotNull(Sub(b,c))): green
-- cell Or/Or(Mul(a,b),c): green
-- cell Or/Or(a,Mul(b,c)): green
-- cell Or/Or(AsNotNull(Mul(a,b)),c): green
-- cell Or/Or(a,AsNotNull(Mul(b,c))): green
-- cell Or/Or(Div(a,b),c): error
-- cell Or/Or(a,Div(b,c)): error
-- cell Or/Or(AsNotNull(Div(a,b)),c): error
-- cell Or/Or(a,AsNotNull(Div(b,c))): error
-- cell Or/Or(Mod(a,b),c): green
-- cell Or/Or(a,Mod(b,c)): green
-- cell Or/Or(AsNotNull(Mod(a,b)),c): green
-- cell Or/Or(a,AsNotNull(Mod(b,c))): green
-- cell Or/Or(And(a,b),c): green
-- cell Or/Or(a,And(b,c)): green
-- cell Or/Or(AsNotNull(And(a,b)),c): green
-- cell Or/Or(a,AsNotNull(And(b,c))): green
-- cell Or/Or(Or(a,b),c): skipped
-- cell Or/Or(a,Or(b,c)): skipped
-- cell Or/Or(AsNotNull(Or(a,b)),c): skipped
-- cell Or/Or(a,AsNotNull(Or(b,c))): skipped
-- cell Or/Or(Xor(a,b),c): green
-- cell Or/Or(a,Xor(b,c)): green
-- cell Or/Or(AsNotNull(Xor(a,b)),c): green
-- cell Or/Or(a,AsNotNull(Xor(b,c))): green
-- cell Or/Or(a,Neg(b)): green
-- cell Or/Or(Neg(b),c): green
-- cell Or/Or(Add(a,Neg(b)),c): green
-- cell Or/Or(Sub(a,Neg(b)),c): green
-- cell Or/Or(Mul(a,Neg(b)),c): green
-- cell Or/Or(Div(a,Neg(b)),c): error
-- cell Or/Or(Mod(a,Neg(b)),c): green
-- cell Or/Or(And(a,Neg(b)),c): green
-- cell Or/Or(Or(a,Neg(b)),c): green
-- cell Or/Or(Xor(a,Neg(b)),c): green
-- cell Or/Or(a,Not(b)): green
-- cell Or/Or(Not(b),c): green
-- cell Or/Or(Add(a,Not(b)),c): green
-- cell Or/Or(Sub(a,Not(b)),c): green
-- cell Or/Or(Mul(a,Not(b)),c): green
-- cell Or/Or(Div(a,Not(b)),c): error
-- cell Or/Or(Mod(a,Not(b)),c): green
-- cell Or/Or(And(a,Not(b)),c): green
-- cell Or/Or(Or(a,Not(b)),c): green
-- cell Or/Or(Xor(a,Not(b)),c): green
-- cell Or/Or(a,NegLit(b)): green
-- cell Or/Or(NegLit(b),c): green
-- cell Or/Or(Add(a,NegLit(b)),c): green
-- cell Or/Or(Sub(a,NegLit(b)),c): green
-- cell Or/Or(Mul(a,NegLit(b)),c): green
-- cell Or/Or(Div(a,NegLit(b)),c): error
-- cell Or/Or(Mod(a,NegLit(b)),c): green
-- cell Or/Or(And(a,NegLit(b)),c): green
-- cell Or/Or(Or(a,NegLit(b)),c): green
-- cell Or/Or(Xor(a,NegLit(b)),c): green
-- cell Or/Or(a,NegParam(b)): green
-- cell Or/Or(NegParam(b),c): green
-- cell Or/Or(Add(a,NegParam(b)),c): green
-- cell Or/Or(Sub(a,NegParam(b)),c): green
-- cell Or/Or(Mul(a,NegParam(b)),c): green
-- cell Or/Or(Div(a,NegParam(b)),c): error
-- cell Or/Or(Mod(a,NegParam(b)),c): green
-- cell Or/Or(And(a,NegParam(b)),c): green
-- cell Or/Or(Or(a,NegParam(b)),c): green
-- cell Or/Or(Xor(a,NegParam(b)),c): green
