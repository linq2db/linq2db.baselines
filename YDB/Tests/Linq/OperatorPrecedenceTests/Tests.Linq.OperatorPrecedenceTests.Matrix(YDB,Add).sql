-- YDB Ydb
SELECT
	r.A - r.B + r.C as c1,
	r.A - r.B + r.C as c2,
	r.A * r.B + r.C as c3,
	r.A + r.B * r.C as c4,
	r.A * r.B + r.C as c5,
	r.A + r.B * r.C as c6,
	r.A / r.B + r.C as c7,
	r.A + r.B / r.C as c8,
	r.A / r.B + r.C as c9,
	r.A + r.B / r.C as c10,
	r.A % r.B + r.C as c11,
	r.A + r.B % r.C as c12,
	r.A % r.B + r.C as c13,
	r.A + r.B % r.C as c14,
	BitCast((BitCast(r.A AS Uint32) & BitCast(r.B AS Uint32)) AS Int32) + r.C as c15,
	r.A + BitCast((BitCast(r.B AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c16,
	BitCast((BitCast(r.A AS Uint32) & BitCast(r.B AS Uint32)) AS Int32) + r.C as c17,
	r.A + BitCast((BitCast(r.B AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c18,
	BitCast((BitCast(r.A AS Uint32) | BitCast(r.B AS Uint32)) AS Int32) + r.C as c19,
	r.A + BitCast((BitCast(r.B AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c20,
	BitCast((BitCast(r.A AS Uint32) | BitCast(r.B AS Uint32)) AS Int32) + r.C as c21,
	r.A + BitCast((BitCast(r.B AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c22,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast(r.B AS Uint32)) AS Int32) + r.C as c23,
	r.A + BitCast((BitCast(r.B AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c24,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast(r.B AS Uint32)) AS Int32) + r.C as c25,
	r.A + BitCast((BitCast(r.B AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c26,
	(r.A + r.B) + r.C as c27,
	r.A + (r.B + r.C) as c28,
	(r.A + -6) + r.C as c29,
	(r.A - r.B) + r.C as c30,
	r.A + (r.B - r.C) as c31,
	(r.A - -6) + r.C as c32,
	r.A * r.B + r.C as c33,
	r.A + r.B * r.C as c34,
	r.A * -6 + r.C as c35,
	r.A / r.B + r.C as c36,
	r.A + r.B / r.C as c37,
	r.A / -6 + r.C as c38,
	(r.A + r.B) + r.C as c39,
	r.A + (r.B + r.C) as c40,
	(r.A + -6) + r.C as c41,
	r.A - r.B as c42,
	-r.B + r.C as c43,
	r.A - r.B + r.C as c44,
	r.A * -r.B + r.C as c45,
	r.A / -r.B + r.C as c46,
	r.A % -r.B + r.C as c47,
	BitCast((BitCast(r.A AS Uint32) & BitCast((-r.B) AS Uint32)) AS Int32) + r.C as c48,
	BitCast((BitCast(r.A AS Uint32) | BitCast((-r.B) AS Uint32)) AS Int32) + r.C as c49,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast((-r.B) AS Uint32)) AS Int32) + r.C as c50,
	r.A + BitCast((~BitCast(r.B AS Uint32)) AS Int32) as c51,
	BitCast((~BitCast(r.B AS Uint32)) AS Int32) + r.C as c52,
	r.A + BitCast((~BitCast(r.B AS Uint32)) AS Int32) + r.C as c53,
	r.A * BitCast((~BitCast(r.B AS Uint32)) AS Int32) + r.C as c54,
	r.A % BitCast((~BitCast(r.B AS Uint32)) AS Int32) + r.C as c55,
	BitCast((BitCast(r.A AS Uint32) & BitCast(BitCast((~BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) + r.C as c56,
	BitCast((BitCast(r.A AS Uint32) | BitCast(BitCast((~BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) + r.C as c57,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast(BitCast((~BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) + r.C as c58,
	r.A + -5 as c59,
	-5 + r.C as c60,
	r.A + -5 + r.C as c61,
	r.A - -5 + r.C as c62,
	r.A * -5 + r.C as c63,
	r.A % -5 + r.C as c64,
	BitCast((BitCast(r.A AS Uint32) & BitCast(-5 AS Uint32)) AS Int32) + r.C as c65,
	BitCast((BitCast(r.A AS Uint32) | BitCast(-5 AS Uint32)) AS Int32) + r.C as c66,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast(-5 AS Uint32)) AS Int32) + r.C as c67
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A + -5 as c1,
	-5 + r.C as c2,
	r.A + -5 + r.C as c3,
	r.A - -5 + r.C as c4,
	r.A * -5 + r.C as c5,
	r.A % -5 + r.C as c6,
	BitCast((BitCast(r.A AS Uint32) & BitCast(-5 AS Uint32)) AS Int32) + r.C as c7,
	BitCast((BitCast(r.A AS Uint32) | BitCast(-5 AS Uint32)) AS Int32) + r.C as c8,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast(-5 AS Uint32)) AS Int32) + r.C as c9
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- cell Add/Add(Add(a,b),c): skipped
-- cell Add/Add(a,Add(b,c)): skipped
-- cell Add/Add(AsNotNull(Add(a,b)),c): skipped
-- cell Add/Add(a,AsNotNull(Add(b,c))): skipped
-- cell Add/Add(Sub(a,b),c): green
-- cell Add/Add(a,Sub(b,c)): skipped
-- cell Add/Add(AsNotNull(Sub(a,b)),c): green
-- cell Add/Add(a,AsNotNull(Sub(b,c))): skipped
-- cell Add/Add(Mul(a,b),c): green
-- cell Add/Add(a,Mul(b,c)): green
-- cell Add/Add(AsNotNull(Mul(a,b)),c): green
-- cell Add/Add(a,AsNotNull(Mul(b,c))): green
-- cell Add/Add(Div(a,b),c): green
-- cell Add/Add(a,Div(b,c)): green
-- cell Add/Add(AsNotNull(Div(a,b)),c): green
-- cell Add/Add(a,AsNotNull(Div(b,c))): green
-- cell Add/Add(Mod(a,b),c): green
-- cell Add/Add(a,Mod(b,c)): green
-- cell Add/Add(AsNotNull(Mod(a,b)),c): green
-- cell Add/Add(a,AsNotNull(Mod(b,c))): green
-- cell Add/Add(And(a,b),c): green
-- cell Add/Add(a,And(b,c)): green
-- cell Add/Add(AsNotNull(And(a,b)),c): green
-- cell Add/Add(a,AsNotNull(And(b,c))): green
-- cell Add/Add(Or(a,b),c): green
-- cell Add/Add(a,Or(b,c)): green
-- cell Add/Add(AsNotNull(Or(a,b)),c): green
-- cell Add/Add(a,AsNotNull(Or(b,c))): green
-- cell Add/Add(Xor(a,b),c): green
-- cell Add/Add(a,Xor(b,c)): green
-- cell Add/Add(AsNotNull(Xor(a,b)),c): green
-- cell Add/Add(a,AsNotNull(Xor(b,c))): green
-- cell Add/Add(TAdd(a,b),c): green
-- cell Add/Add(a,TAdd(b,c)): green
-- cell Add/Add(TAdd(a,NegLit),c): green
-- cell Add/Add(TSub(a,b),c): green
-- cell Add/Add(a,TSub(b,c)): green
-- cell Add/Add(TSub(a,NegLit),c): green
-- cell Add/Add(TMul(a,b),c): green
-- cell Add/Add(a,TMul(b,c)): green
-- cell Add/Add(TMul(a,NegLit),c): green
-- cell Add/Add(TDiv(a,b),c): green
-- cell Add/Add(a,TDiv(b,c)): green
-- cell Add/Add(TDiv(a,NegLit),c): green
-- cell Add/Add(TAddOffset(a,b),c): green
-- cell Add/Add(a,TAddOffset(b,c)): green
-- cell Add/Add(TAddOffset(a,NegLit),c): green
-- cell Add/Add(a,Neg(b)): green
-- cell Add/Add(Neg(b),c): green
-- cell Add/Add(Add(a,Neg(b)),c): green
-- cell Add/Add(Sub(a,Neg(b)),c): skipped
-- cell Add/Add(Mul(a,Neg(b)),c): green
-- cell Add/Add(Div(a,Neg(b)),c): green
-- cell Add/Add(Mod(a,Neg(b)),c): green
-- cell Add/Add(And(a,Neg(b)),c): green
-- cell Add/Add(Or(a,Neg(b)),c): green
-- cell Add/Add(Xor(a,Neg(b)),c): green
-- cell Add/Add(a,Not(b)): green
-- cell Add/Add(Not(b),c): green
-- cell Add/Add(Add(a,Not(b)),c): green
-- cell Add/Add(Sub(a,Not(b)),c): skipped
-- cell Add/Add(Mul(a,Not(b)),c): green
-- cell Add/Add(Div(a,Not(b)),c): skipped
-- cell Add/Add(Mod(a,Not(b)),c): green
-- cell Add/Add(And(a,Not(b)),c): green
-- cell Add/Add(Or(a,Not(b)),c): green
-- cell Add/Add(Xor(a,Not(b)),c): green
-- cell Add/Add(a,NegLit(b)): green
-- cell Add/Add(NegLit(b),c): green
-- cell Add/Add(Add(a,NegLit(b)),c): green
-- cell Add/Add(Sub(a,NegLit(b)),c): green
-- cell Add/Add(Mul(a,NegLit(b)),c): green
-- cell Add/Add(Div(a,NegLit(b)),c): skipped
-- cell Add/Add(Mod(a,NegLit(b)),c): green
-- cell Add/Add(And(a,NegLit(b)),c): green
-- cell Add/Add(Or(a,NegLit(b)),c): green
-- cell Add/Add(Xor(a,NegLit(b)),c): green
-- cell Add/Add(a,NegParam(b)): green
-- cell Add/Add(NegParam(b),c): green
-- cell Add/Add(Add(a,NegParam(b)),c): green
-- cell Add/Add(Sub(a,NegParam(b)),c): green
-- cell Add/Add(Mul(a,NegParam(b)),c): green
-- cell Add/Add(Div(a,NegParam(b)),c): skipped
-- cell Add/Add(Mod(a,NegParam(b)),c): green
-- cell Add/Add(And(a,NegParam(b)),c): green
-- cell Add/Add(Or(a,NegParam(b)),c): green
-- cell Add/Add(Xor(a,NegParam(b)),c): green
