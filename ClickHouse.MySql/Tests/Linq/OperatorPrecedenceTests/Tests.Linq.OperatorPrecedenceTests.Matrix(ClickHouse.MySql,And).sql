-- ClickHouse.MySql ClickHouse
SELECT
	bitAnd(r.A + r.B, r.C),
	bitAnd(r.A, r.B + r.C),
	bitAnd(r.A + r.B, r.C),
	bitAnd(r.A, r.B + r.C),
	bitAnd(r.A - r.B, r.C),
	bitAnd(r.A, r.B - r.C),
	bitAnd(r.A - r.B, r.C),
	bitAnd(r.A, r.B - r.C),
	bitAnd(r.A * r.B, r.C),
	bitAnd(r.A, r.B * r.C),
	bitAnd(r.A * r.B, r.C),
	bitAnd(r.A, r.B * r.C),
	bitAnd(intDiv(r.A, r.B), r.C),
	bitAnd(r.A, intDiv(r.B, r.C)),
	bitAnd(intDiv(r.A, r.B), r.C),
	bitAnd(r.A, intDiv(r.B, r.C)),
	bitAnd(r.A % r.B, r.C),
	bitAnd(r.A, r.B % r.C),
	bitAnd(r.A % r.B, r.C),
	bitAnd(r.A, r.B % r.C),
	bitAnd(bitOr(r.A, r.B), r.C),
	bitAnd(r.A, bitOr(r.B, r.C)),
	bitAnd(bitOr(r.A, r.B), r.C),
	bitAnd(r.A, bitOr(r.B, r.C)),
	bitAnd(bitXor(r.A, r.B), r.C),
	bitAnd(r.A, bitXor(r.B, r.C)),
	bitAnd(bitXor(r.A, r.B), r.C),
	bitAnd(r.A, bitXor(r.B, r.C)),
	bitAnd(r.A + r.B, r.C),
	bitAnd(r.A, r.B + r.C),
	bitAnd(r.A + -6, r.C),
	bitAnd(r.A - r.B, r.C),
	bitAnd(r.A, r.B - r.C),
	bitAnd(r.A - -6, r.C),
	bitAnd(r.A * r.B, r.C),
	bitAnd(r.A, r.B * r.C),
	bitAnd(r.A * -6, r.C),
	bitAnd(r.A + r.B, r.C),
	bitAnd(r.A, r.B + r.C),
	bitAnd(r.A + -6, r.C),
	bitAnd(r.A, negate(r.B)),
	bitAnd(negate(r.B), r.C),
	bitAnd(r.A + negate(r.B), r.C),
	bitAnd(r.A - negate(r.B), r.C),
	bitAnd(r.A * negate(r.B), r.C),
	bitAnd(intDiv(r.A, negate(r.B)), r.C),
	bitAnd(r.A % negate(r.B), r.C),
	bitAnd(bitAnd(r.A, negate(r.B)), r.C),
	bitAnd(bitOr(r.A, negate(r.B)), r.C),
	bitAnd(bitXor(r.A, negate(r.B)), r.C),
	bitAnd(r.A, bitNot(r.B)),
	bitAnd(bitNot(r.B), r.C),
	bitAnd(r.A + bitNot(r.B), r.C),
	bitAnd(r.A - bitNot(r.B), r.C),
	bitAnd(r.A * bitNot(r.B), r.C),
	bitAnd(r.A % bitNot(r.B), r.C),
	bitAnd(bitAnd(r.A, bitNot(r.B)), r.C),
	bitAnd(bitOr(r.A, bitNot(r.B)), r.C),
	bitAnd(bitXor(r.A, bitNot(r.B)), r.C),
	bitAnd(r.A, -5),
	bitAnd(-5, r.C),
	bitAnd(r.A + -5, r.C),
	bitAnd(r.A - -5, r.C),
	bitAnd(r.A * -5, r.C),
	bitAnd(r.A % -5, r.C),
	bitAnd(bitAnd(r.A, -5), r.C),
	bitAnd(bitOr(r.A, -5), r.C),
	bitAnd(bitXor(r.A, -5), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.MySql ClickHouse
SELECT
	bitAnd(r.A, -5),
	bitAnd(-5, r.C),
	bitAnd(r.A + -5, r.C),
	bitAnd(r.A - -5, r.C),
	bitAnd(r.A * -5, r.C),
	bitAnd(r.A % -5, r.C),
	bitAnd(bitAnd(r.A, -5), r.C),
	bitAnd(bitOr(r.A, -5), r.C),
	bitAnd(bitXor(r.A, -5), r.C)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- cell And/And(Add(a,b),c): green
-- cell And/And(a,Add(b,c)): green
-- cell And/And(AsNotNull(Add(a,b)),c): green
-- cell And/And(a,AsNotNull(Add(b,c))): green
-- cell And/And(Sub(a,b),c): green
-- cell And/And(a,Sub(b,c)): green
-- cell And/And(AsNotNull(Sub(a,b)),c): green
-- cell And/And(a,AsNotNull(Sub(b,c))): green
-- cell And/And(Mul(a,b),c): green
-- cell And/And(a,Mul(b,c)): green
-- cell And/And(AsNotNull(Mul(a,b)),c): green
-- cell And/And(a,AsNotNull(Mul(b,c))): green
-- cell And/And(Div(a,b),c): green
-- cell And/And(a,Div(b,c)): green
-- cell And/And(AsNotNull(Div(a,b)),c): green
-- cell And/And(a,AsNotNull(Div(b,c))): green
-- cell And/And(Mod(a,b),c): green
-- cell And/And(a,Mod(b,c)): green
-- cell And/And(AsNotNull(Mod(a,b)),c): green
-- cell And/And(a,AsNotNull(Mod(b,c))): green
-- cell And/And(And(a,b),c): skipped
-- cell And/And(a,And(b,c)): skipped
-- cell And/And(AsNotNull(And(a,b)),c): skipped
-- cell And/And(a,AsNotNull(And(b,c))): skipped
-- cell And/And(Or(a,b),c): green
-- cell And/And(a,Or(b,c)): green
-- cell And/And(AsNotNull(Or(a,b)),c): green
-- cell And/And(a,AsNotNull(Or(b,c))): green
-- cell And/And(Xor(a,b),c): green
-- cell And/And(a,Xor(b,c)): green
-- cell And/And(AsNotNull(Xor(a,b)),c): green
-- cell And/And(a,AsNotNull(Xor(b,c))): green
-- cell And/And(TAdd(a,b),c): green
-- cell And/And(a,TAdd(b,c)): green
-- cell And/And(TAdd(a,NegLit),c): green
-- cell And/And(TSub(a,b),c): green
-- cell And/And(a,TSub(b,c)): green
-- cell And/And(TSub(a,NegLit),c): green
-- cell And/And(TMul(a,b),c): green
-- cell And/And(a,TMul(b,c)): green
-- cell And/And(TMul(a,NegLit),c): green
-- cell And/And(TAddOffset(a,b),c): green
-- cell And/And(a,TAddOffset(b,c)): green
-- cell And/And(TAddOffset(a,NegLit),c): green
-- cell And/And(a,Neg(b)): green
-- cell And/And(Neg(b),c): green
-- cell And/And(Add(a,Neg(b)),c): green
-- cell And/And(Sub(a,Neg(b)),c): green
-- cell And/And(Mul(a,Neg(b)),c): green
-- cell And/And(Div(a,Neg(b)),c): green
-- cell And/And(Mod(a,Neg(b)),c): green
-- cell And/And(And(a,Neg(b)),c): green
-- cell And/And(Or(a,Neg(b)),c): green
-- cell And/And(Xor(a,Neg(b)),c): green
-- cell And/And(a,Not(b)): green
-- cell And/And(Not(b),c): green
-- cell And/And(Add(a,Not(b)),c): green
-- cell And/And(Sub(a,Not(b)),c): green
-- cell And/And(Mul(a,Not(b)),c): green
-- cell And/And(Div(a,Not(b)),c): skipped
-- cell And/And(Mod(a,Not(b)),c): green
-- cell And/And(And(a,Not(b)),c): green
-- cell And/And(Or(a,Not(b)),c): green
-- cell And/And(Xor(a,Not(b)),c): green
-- cell And/And(a,NegLit(b)): green
-- cell And/And(NegLit(b),c): green
-- cell And/And(Add(a,NegLit(b)),c): green
-- cell And/And(Sub(a,NegLit(b)),c): green
-- cell And/And(Mul(a,NegLit(b)),c): green
-- cell And/And(Div(a,NegLit(b)),c): skipped
-- cell And/And(Mod(a,NegLit(b)),c): green
-- cell And/And(And(a,NegLit(b)),c): green
-- cell And/And(Or(a,NegLit(b)),c): green
-- cell And/And(Xor(a,NegLit(b)),c): green
-- cell And/And(a,NegParam(b)): green
-- cell And/And(NegParam(b),c): green
-- cell And/And(Add(a,NegParam(b)),c): green
-- cell And/And(Sub(a,NegParam(b)),c): green
-- cell And/And(Mul(a,NegParam(b)),c): green
-- cell And/And(Div(a,NegParam(b)),c): skipped
-- cell And/And(Mod(a,NegParam(b)),c): green
-- cell And/And(And(a,NegParam(b)),c): green
-- cell And/And(Or(a,NegParam(b)),c): green
-- cell And/And(Xor(a,NegParam(b)),c): green
