-- YDB Ydb
SELECT
	r.A - (r.B + r.C) as c1,
	r.A - (r.B + r.C) as c2,
	r.A - r.B - r.C as c3,
	r.A - (r.B - r.C) as c4,
	r.A - r.B - r.C as c5,
	r.A - (r.B - r.C) as c6,
	r.A * r.B - r.C as c7,
	r.A - r.B * r.C as c8,
	r.A * r.B - r.C as c9,
	r.A - r.B * r.C as c10,
	r.A / r.B - r.C as c11,
	r.A - r.B / r.C as c12,
	r.A / r.B - r.C as c13,
	r.A - r.B / r.C as c14,
	r.A % r.B - r.C as c15,
	r.A - r.B % r.C as c16,
	r.A % r.B - r.C as c17,
	r.A - r.B % r.C as c18,
	BitCast((BitCast(r.A AS Uint32) & BitCast(r.B AS Uint32)) AS Int32) - r.C as c19,
	r.A - BitCast((BitCast(r.B AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c20,
	BitCast((BitCast(r.A AS Uint32) & BitCast(r.B AS Uint32)) AS Int32) - r.C as c21,
	r.A - BitCast((BitCast(r.B AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c22,
	r.A - BitCast((BitCast(r.B AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c23,
	r.A - BitCast((BitCast(r.B AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c24,
	r.A - BitCast((BitCast(r.B AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c25,
	r.A - BitCast((BitCast(r.B AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c26,
	(r.A + r.B) - r.C as c27,
	r.A - (r.B + r.C) as c28,
	(r.A + -6) - r.C as c29,
	(r.A - r.B) - r.C as c30,
	r.A - (r.B - r.C) as c31,
	(r.A - -6) - r.C as c32,
	r.A * r.B - r.C as c33,
	r.A - r.B * r.C as c34,
	r.A * -6 - r.C as c35,
	r.A / r.B - r.C as c36,
	r.A - r.B / r.C as c37,
	r.A / -6 - r.C as c38,
	(r.A + r.B) - r.C as c39,
	r.A - (r.B + r.C) as c40,
	(r.A + -6) - r.C as c41,
	r.A + r.B as c42,
	-r.B - r.C as c43,
	r.A - r.B - r.C as c44,
	r.A * -r.B - r.C as c45,
	r.A / -r.B - r.C as c46,
	r.A % -r.B - r.C as c47,
	BitCast((BitCast(r.A AS Uint32) & BitCast((-r.B) AS Uint32)) AS Int32) - r.C as c48,
	BitCast((BitCast(r.A AS Uint32) | BitCast((-r.B) AS Uint32)) AS Int32) - r.C as c49,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast((-r.B) AS Uint32)) AS Int32) - r.C as c50,
	r.A - BitCast((~BitCast(r.B AS Uint32)) AS Int32) as c51,
	BitCast((~BitCast(r.B AS Uint32)) AS Int32) - r.C as c52,
	r.A + BitCast((~BitCast(r.B AS Uint32)) AS Int32) - r.C as c53,
	r.A * BitCast((~BitCast(r.B AS Uint32)) AS Int32) - r.C as c54,
	r.A % BitCast((~BitCast(r.B AS Uint32)) AS Int32) - r.C as c55,
	BitCast((BitCast(r.A AS Uint32) & BitCast(BitCast((~BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) - r.C as c56,
	BitCast((BitCast(r.A AS Uint32) | BitCast(BitCast((~BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) - r.C as c57,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast(BitCast((~BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) - r.C as c58,
	r.A - -5 as c59,
	-5 - r.C as c60,
	r.A + -5 - r.C as c61,
	r.A - -5 - r.C as c62,
	r.A * -5 - r.C as c63,
	r.A % -5 - r.C as c64,
	BitCast((BitCast(r.A AS Uint32) & BitCast(-5 AS Uint32)) AS Int32) - r.C as c65,
	BitCast((BitCast(r.A AS Uint32) | BitCast(-5 AS Uint32)) AS Int32) - r.C as c66,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast(-5 AS Uint32)) AS Int32) - r.C as c67
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A - -5 as c1,
	-5 - r.C as c2,
	r.A + -5 - r.C as c3,
	r.A - -5 - r.C as c4,
	r.A * -5 - r.C as c5,
	r.A % -5 - r.C as c6,
	BitCast((BitCast(r.A AS Uint32) & BitCast(-5 AS Uint32)) AS Int32) - r.C as c7,
	BitCast((BitCast(r.A AS Uint32) | BitCast(-5 AS Uint32)) AS Int32) - r.C as c8,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast(-5 AS Uint32)) AS Int32) - r.C as c9
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- cell Sub/Sub(Add(a,b),c): skipped
-- cell Sub/Sub(a,Add(b,c)): green
-- cell Sub/Sub(AsNotNull(Add(a,b)),c): skipped
-- cell Sub/Sub(a,AsNotNull(Add(b,c))): green
-- cell Sub/Sub(Sub(a,b),c): green
-- cell Sub/Sub(a,Sub(b,c)): green
-- cell Sub/Sub(AsNotNull(Sub(a,b)),c): green
-- cell Sub/Sub(a,AsNotNull(Sub(b,c))): green
-- cell Sub/Sub(Mul(a,b),c): green
-- cell Sub/Sub(a,Mul(b,c)): green
-- cell Sub/Sub(AsNotNull(Mul(a,b)),c): green
-- cell Sub/Sub(a,AsNotNull(Mul(b,c))): green
-- cell Sub/Sub(Div(a,b),c): green
-- cell Sub/Sub(a,Div(b,c)): green
-- cell Sub/Sub(AsNotNull(Div(a,b)),c): green
-- cell Sub/Sub(a,AsNotNull(Div(b,c))): green
-- cell Sub/Sub(Mod(a,b),c): green
-- cell Sub/Sub(a,Mod(b,c)): green
-- cell Sub/Sub(AsNotNull(Mod(a,b)),c): green
-- cell Sub/Sub(a,AsNotNull(Mod(b,c))): green
-- cell Sub/Sub(And(a,b),c): green
-- cell Sub/Sub(a,And(b,c)): green
-- cell Sub/Sub(AsNotNull(And(a,b)),c): green
-- cell Sub/Sub(a,AsNotNull(And(b,c))): green
-- cell Sub/Sub(Or(a,b),c): skipped
-- cell Sub/Sub(a,Or(b,c)): green
-- cell Sub/Sub(AsNotNull(Or(a,b)),c): skipped
-- cell Sub/Sub(a,AsNotNull(Or(b,c))): green
-- cell Sub/Sub(Xor(a,b),c): skipped
-- cell Sub/Sub(a,Xor(b,c)): green
-- cell Sub/Sub(AsNotNull(Xor(a,b)),c): skipped
-- cell Sub/Sub(a,AsNotNull(Xor(b,c))): green
-- cell Sub/Sub(TAdd(a,b),c): green
-- cell Sub/Sub(a,TAdd(b,c)): green
-- cell Sub/Sub(TAdd(a,NegLit),c): green
-- cell Sub/Sub(TSub(a,b),c): green
-- cell Sub/Sub(a,TSub(b,c)): green
-- cell Sub/Sub(TSub(a,NegLit),c): green
-- cell Sub/Sub(TMul(a,b),c): green
-- cell Sub/Sub(a,TMul(b,c)): green
-- cell Sub/Sub(TMul(a,NegLit),c): green
-- cell Sub/Sub(TDiv(a,b),c): green
-- cell Sub/Sub(a,TDiv(b,c)): green
-- cell Sub/Sub(TDiv(a,NegLit),c): green
-- cell Sub/Sub(TAddOffset(a,b),c): green
-- cell Sub/Sub(a,TAddOffset(b,c)): green
-- cell Sub/Sub(TAddOffset(a,NegLit),c): green
-- cell Sub/Sub(a,Neg(b)): green
-- cell Sub/Sub(Neg(b),c): green
-- cell Sub/Sub(Add(a,Neg(b)),c): green
-- cell Sub/Sub(Sub(a,Neg(b)),c): skipped
-- cell Sub/Sub(Mul(a,Neg(b)),c): green
-- cell Sub/Sub(Div(a,Neg(b)),c): green
-- cell Sub/Sub(Mod(a,Neg(b)),c): green
-- cell Sub/Sub(And(a,Neg(b)),c): green
-- cell Sub/Sub(Or(a,Neg(b)),c): green
-- cell Sub/Sub(Xor(a,Neg(b)),c): green
-- cell Sub/Sub(a,Not(b)): green
-- cell Sub/Sub(Not(b),c): green
-- cell Sub/Sub(Add(a,Not(b)),c): green
-- cell Sub/Sub(Sub(a,Not(b)),c): skipped
-- cell Sub/Sub(Mul(a,Not(b)),c): green
-- cell Sub/Sub(Div(a,Not(b)),c): skipped
-- cell Sub/Sub(Mod(a,Not(b)),c): green
-- cell Sub/Sub(And(a,Not(b)),c): green
-- cell Sub/Sub(Or(a,Not(b)),c): green
-- cell Sub/Sub(Xor(a,Not(b)),c): green
-- cell Sub/Sub(a,NegLit(b)): green
-- cell Sub/Sub(NegLit(b),c): green
-- cell Sub/Sub(Add(a,NegLit(b)),c): green
-- cell Sub/Sub(Sub(a,NegLit(b)),c): green
-- cell Sub/Sub(Mul(a,NegLit(b)),c): green
-- cell Sub/Sub(Div(a,NegLit(b)),c): skipped
-- cell Sub/Sub(Mod(a,NegLit(b)),c): green
-- cell Sub/Sub(And(a,NegLit(b)),c): green
-- cell Sub/Sub(Or(a,NegLit(b)),c): green
-- cell Sub/Sub(Xor(a,NegLit(b)),c): green
-- cell Sub/Sub(a,NegParam(b)): green
-- cell Sub/Sub(NegParam(b),c): green
-- cell Sub/Sub(Add(a,NegParam(b)),c): green
-- cell Sub/Sub(Sub(a,NegParam(b)),c): green
-- cell Sub/Sub(Mul(a,NegParam(b)),c): green
-- cell Sub/Sub(Div(a,NegParam(b)),c): skipped
-- cell Sub/Sub(Mod(a,NegParam(b)),c): green
-- cell Sub/Sub(And(a,NegParam(b)),c): green
-- cell Sub/Sub(Or(a,NegParam(b)),c): green
-- cell Sub/Sub(Xor(a,NegParam(b)),c): green
