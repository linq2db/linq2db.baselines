-- YDB Ydb
SELECT
	(r.A + r.B) * r.C as c1,
	r.A * (r.B + r.C) as c2,
	(r.A + r.B) * r.C as c3,
	r.A * (r.B + r.C) as c4,
	(r.A - r.B) * r.C as c5,
	r.A * (r.B - r.C) as c6,
	(r.A - r.B) * r.C as c7,
	r.A * (r.B - r.C) as c8,
	r.A / r.B * r.C as c9,
	r.A / r.B * r.C as c10,
	BitCast((BitCast(r.A AS Uint32) & BitCast(r.B AS Uint32)) AS Int32) * r.C as c11,
	r.A * BitCast((BitCast(r.B AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c12,
	BitCast((BitCast(r.A AS Uint32) & BitCast(r.B AS Uint32)) AS Int32) * r.C as c13,
	r.A * BitCast((BitCast(r.B AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c14,
	BitCast((BitCast(r.A AS Uint32) | BitCast(r.B AS Uint32)) AS Int32) * r.C as c15,
	r.A * BitCast((BitCast(r.B AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c16,
	BitCast((BitCast(r.A AS Uint32) | BitCast(r.B AS Uint32)) AS Int32) * r.C as c17,
	r.A * BitCast((BitCast(r.B AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c18,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast(r.B AS Uint32)) AS Int32) * r.C as c19,
	r.A * BitCast((BitCast(r.B AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c20,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast(r.B AS Uint32)) AS Int32) * r.C as c21,
	r.A * BitCast((BitCast(r.B AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c22,
	(r.A + r.B) * r.C as c23,
	r.A * (r.B + r.C) as c24,
	(r.A + -6) * r.C as c25,
	(r.A - r.B) * r.C as c26,
	r.A * (r.B - r.C) as c27,
	(r.A - -6) * r.C as c28,
	(r.A * r.B) * r.C as c29,
	r.A * (r.B * r.C) as c30,
	(r.A * -6) * r.C as c31,
	(r.A / r.B) * r.C as c32,
	r.A * (r.B / r.C) as c33,
	(r.A / -6) * r.C as c34,
	(r.A + r.B) * r.C as c35,
	r.A * (r.B + r.C) as c36,
	(r.A + -6) * r.C as c37,
	r.A * (-r.B) as c38,
	(r.A - r.B) * r.C as c39,
	(r.A + r.B) * r.C as c40,
	r.A / (-r.B) * r.C as c41,
	BitCast((BitCast(r.A AS Uint32) & BitCast((-r.B) AS Uint32)) AS Int32) * r.C as c42,
	BitCast((BitCast(r.A AS Uint32) | BitCast((-r.B) AS Uint32)) AS Int32) * r.C as c43,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast((-r.B) AS Uint32)) AS Int32) * r.C as c44,
	r.A * BitCast((~BitCast(r.B AS Uint32)) AS Int32) as c45,
	BitCast((~BitCast(r.B AS Uint32)) AS Int32) * r.C as c46,
	(r.A + BitCast((~BitCast(r.B AS Uint32)) AS Int32)) * r.C as c47,
	(r.A - BitCast((~BitCast(r.B AS Uint32)) AS Int32)) * r.C as c48,
	r.A * BitCast((~BitCast(r.B AS Uint32)) AS Int32) * r.C as c49,
	r.A % BitCast((~BitCast(r.B AS Uint32)) AS Int32) * r.C as c50,
	BitCast((BitCast(r.A AS Uint32) & BitCast(BitCast((~BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) * r.C as c51,
	BitCast((BitCast(r.A AS Uint32) | BitCast(BitCast((~BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) * r.C as c52,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast(BitCast((~BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) * r.C as c53,
	r.A * (-5) as c54,
	(-5) * r.C as c55,
	(r.A + (-5)) * r.C as c56,
	(r.A - (-5)) * r.C as c57,
	r.A * (-5) * r.C as c58,
	r.A % (-5) * r.C as c59,
	BitCast((BitCast(r.A AS Uint32) & BitCast(-5 AS Uint32)) AS Int32) * r.C as c60,
	BitCast((BitCast(r.A AS Uint32) | BitCast(-5 AS Uint32)) AS Int32) * r.C as c61,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast(-5 AS Uint32)) AS Int32) * r.C as c62
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * (-5) as c1,
	(-5) * r.C as c2,
	(r.A + (-5)) * r.C as c3,
	(r.A - (-5)) * r.C as c4,
	r.A * (-5) * r.C as c5,
	r.A % (-5) * r.C as c6,
	BitCast((BitCast(r.A AS Uint32) & BitCast(-5 AS Uint32)) AS Int32) * r.C as c7,
	BitCast((BitCast(r.A AS Uint32) | BitCast(-5 AS Uint32)) AS Int32) * r.C as c8,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast(-5 AS Uint32)) AS Int32) * r.C as c9
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- cell Mul/Mul(Add(a,b),c): green
-- cell Mul/Mul(a,Add(b,c)): green
-- cell Mul/Mul(AsNotNull(Add(a,b)),c): green
-- cell Mul/Mul(a,AsNotNull(Add(b,c))): green
-- cell Mul/Mul(Sub(a,b),c): green
-- cell Mul/Mul(a,Sub(b,c)): green
-- cell Mul/Mul(AsNotNull(Sub(a,b)),c): green
-- cell Mul/Mul(a,AsNotNull(Sub(b,c))): green
-- cell Mul/Mul(Mul(a,b),c): skipped
-- cell Mul/Mul(a,Mul(b,c)): skipped
-- cell Mul/Mul(AsNotNull(Mul(a,b)),c): skipped
-- cell Mul/Mul(a,AsNotNull(Mul(b,c))): skipped
-- cell Mul/Mul(Div(a,b),c): green
-- cell Mul/Mul(a,Div(b,c)): skipped
-- cell Mul/Mul(AsNotNull(Div(a,b)),c): green
-- cell Mul/Mul(a,AsNotNull(Div(b,c))): skipped
-- cell Mul/Mul(Mod(a,b),c): skipped
-- cell Mul/Mul(a,Mod(b,c)): skipped
-- cell Mul/Mul(AsNotNull(Mod(a,b)),c): skipped
-- cell Mul/Mul(a,AsNotNull(Mod(b,c))): skipped
-- cell Mul/Mul(And(a,b),c): green
-- cell Mul/Mul(a,And(b,c)): green
-- cell Mul/Mul(AsNotNull(And(a,b)),c): green
-- cell Mul/Mul(a,AsNotNull(And(b,c))): green
-- cell Mul/Mul(Or(a,b),c): green
-- cell Mul/Mul(a,Or(b,c)): green
-- cell Mul/Mul(AsNotNull(Or(a,b)),c): green
-- cell Mul/Mul(a,AsNotNull(Or(b,c))): green
-- cell Mul/Mul(Xor(a,b),c): green
-- cell Mul/Mul(a,Xor(b,c)): green
-- cell Mul/Mul(AsNotNull(Xor(a,b)),c): green
-- cell Mul/Mul(a,AsNotNull(Xor(b,c))): green
-- cell Mul/Mul(TAdd(a,b),c): green
-- cell Mul/Mul(a,TAdd(b,c)): green
-- cell Mul/Mul(TAdd(a,NegLit),c): green
-- cell Mul/Mul(TSub(a,b),c): green
-- cell Mul/Mul(a,TSub(b,c)): green
-- cell Mul/Mul(TSub(a,NegLit),c): green
-- cell Mul/Mul(TMul(a,b),c): green
-- cell Mul/Mul(a,TMul(b,c)): green
-- cell Mul/Mul(TMul(a,NegLit),c): green
-- cell Mul/Mul(TDiv(a,b),c): green
-- cell Mul/Mul(a,TDiv(b,c)): green
-- cell Mul/Mul(TDiv(a,NegLit),c): green
-- cell Mul/Mul(TAddOffset(a,b),c): green
-- cell Mul/Mul(a,TAddOffset(b,c)): green
-- cell Mul/Mul(TAddOffset(a,NegLit),c): green
-- cell Mul/Mul(a,Neg(b)): green
-- cell Mul/Mul(Neg(b),c): skipped
-- cell Mul/Mul(Add(a,Neg(b)),c): green
-- cell Mul/Mul(Sub(a,Neg(b)),c): green
-- cell Mul/Mul(Mul(a,Neg(b)),c): skipped
-- cell Mul/Mul(Div(a,Neg(b)),c): green
-- cell Mul/Mul(Mod(a,Neg(b)),c): skipped
-- cell Mul/Mul(And(a,Neg(b)),c): green
-- cell Mul/Mul(Or(a,Neg(b)),c): green
-- cell Mul/Mul(Xor(a,Neg(b)),c): green
-- cell Mul/Mul(a,Not(b)): green
-- cell Mul/Mul(Not(b),c): green
-- cell Mul/Mul(Add(a,Not(b)),c): green
-- cell Mul/Mul(Sub(a,Not(b)),c): green
-- cell Mul/Mul(Mul(a,Not(b)),c): green
-- cell Mul/Mul(Div(a,Not(b)),c): skipped
-- cell Mul/Mul(Mod(a,Not(b)),c): green
-- cell Mul/Mul(And(a,Not(b)),c): green
-- cell Mul/Mul(Or(a,Not(b)),c): green
-- cell Mul/Mul(Xor(a,Not(b)),c): green
-- cell Mul/Mul(a,NegLit(b)): green
-- cell Mul/Mul(NegLit(b),c): green
-- cell Mul/Mul(Add(a,NegLit(b)),c): green
-- cell Mul/Mul(Sub(a,NegLit(b)),c): green
-- cell Mul/Mul(Mul(a,NegLit(b)),c): green
-- cell Mul/Mul(Div(a,NegLit(b)),c): skipped
-- cell Mul/Mul(Mod(a,NegLit(b)),c): green
-- cell Mul/Mul(And(a,NegLit(b)),c): green
-- cell Mul/Mul(Or(a,NegLit(b)),c): green
-- cell Mul/Mul(Xor(a,NegLit(b)),c): green
-- cell Mul/Mul(a,NegParam(b)): green
-- cell Mul/Mul(NegParam(b),c): green
-- cell Mul/Mul(Add(a,NegParam(b)),c): green
-- cell Mul/Mul(Sub(a,NegParam(b)),c): green
-- cell Mul/Mul(Mul(a,NegParam(b)),c): green
-- cell Mul/Mul(Div(a,NegParam(b)),c): skipped
-- cell Mul/Mul(Mod(a,NegParam(b)),c): green
-- cell Mul/Mul(And(a,NegParam(b)),c): green
-- cell Mul/Mul(Or(a,NegParam(b)),c): green
-- cell Mul/Mul(Xor(a,NegParam(b)),c): green
