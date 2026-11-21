-- YDB Ydb
SELECT
	BitCast((BitCast((r.A + r.B) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c1,
	BitCast((BitCast(r.A AS Uint32) | BitCast((r.B + r.C) AS Uint32)) AS Int32) as c2,
	BitCast((BitCast((r.A + r.B) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c3,
	BitCast((BitCast(r.A AS Uint32) | BitCast((r.B + r.C) AS Uint32)) AS Int32) as c4,
	BitCast((BitCast((r.A - r.B) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c5,
	BitCast((BitCast((r.A - r.B) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c6,
	BitCast((BitCast((r.A * r.B) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c7,
	BitCast((BitCast(r.A AS Uint32) | BitCast((r.B * r.C) AS Uint32)) AS Int32) as c8,
	BitCast((BitCast((r.A * r.B) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c9,
	BitCast((BitCast(r.A AS Uint32) | BitCast((r.B * r.C) AS Uint32)) AS Int32) as c10,
	BitCast((BitCast((r.A / r.B) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c11,
	BitCast((BitCast(r.A AS Uint32) | BitCast((r.B / r.C) AS Uint32)) AS Int32) as c12,
	BitCast((BitCast((r.A / r.B) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c13,
	BitCast((BitCast(r.A AS Uint32) | BitCast((r.B / r.C) AS Uint32)) AS Int32) as c14,
	BitCast((BitCast((r.A % r.B) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c15,
	BitCast((BitCast(r.A AS Uint32) | BitCast((r.B % r.C) AS Uint32)) AS Int32) as c16,
	BitCast((BitCast((r.A % r.B) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c17,
	BitCast((BitCast(r.A AS Uint32) | BitCast((r.B % r.C) AS Uint32)) AS Int32) as c18,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) & BitCast(r.B AS Uint32)) AS Int32) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c19,
	BitCast((BitCast(r.A AS Uint32) | BitCast(BitCast((BitCast(r.B AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) AS Uint32)) AS Int32) as c20,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) & BitCast(r.B AS Uint32)) AS Int32) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c21,
	BitCast((BitCast(r.A AS Uint32) | BitCast(BitCast((BitCast(r.B AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) AS Uint32)) AS Int32) as c22,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) ^ BitCast(r.B AS Uint32)) AS Int32) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c23,
	BitCast((BitCast(r.A AS Uint32) | BitCast(BitCast((BitCast(r.B AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) AS Uint32)) AS Int32) as c24,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) ^ BitCast(r.B AS Uint32)) AS Int32) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c25,
	BitCast((BitCast(r.A AS Uint32) | BitCast(BitCast((BitCast(r.B AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) AS Uint32)) AS Int32) as c26,
	BitCast((BitCast((r.A + r.B) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c27,
	BitCast((BitCast(r.A AS Uint32) | BitCast((r.B + r.C) AS Uint32)) AS Int32) as c28,
	BitCast((BitCast((r.A + -6) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c29,
	BitCast((BitCast((r.A - r.B) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c30,
	BitCast((BitCast(r.A AS Uint32) | BitCast((r.B - r.C) AS Uint32)) AS Int32) as c31,
	BitCast((BitCast((r.A - -6) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c32,
	BitCast((BitCast((r.A * r.B) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c33,
	BitCast((BitCast(r.A AS Uint32) | BitCast((r.B * r.C) AS Uint32)) AS Int32) as c34,
	BitCast((BitCast((r.A * -6) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c35,
	BitCast((BitCast((r.A + r.B) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c36,
	BitCast((BitCast(r.A AS Uint32) | BitCast((r.B + r.C) AS Uint32)) AS Int32) as c37,
	BitCast((BitCast((r.A + -6) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c38,
	BitCast((BitCast(r.A AS Uint32) | BitCast((-r.B) AS Uint32)) AS Int32) as c39,
	BitCast((BitCast((-r.B) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c40,
	BitCast((BitCast((r.A - r.B) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c41,
	BitCast((BitCast((r.A + r.B) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c42,
	BitCast((BitCast((r.A * (-r.B)) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c43,
	BitCast((BitCast((r.A / (-r.B)) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c44,
	BitCast((BitCast((r.A % (-r.B)) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c45,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) & BitCast((-r.B) AS Uint32)) AS Int32) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c46,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) | BitCast((-r.B) AS Uint32)) AS Int32) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c47,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) ^ BitCast((-r.B) AS Uint32)) AS Int32) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c48,
	BitCast((BitCast(r.A AS Uint32) | BitCast(BitCast((~BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) as c49,
	BitCast((BitCast(BitCast((~BitCast(r.B AS Uint32)) AS Int32) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c50,
	BitCast((BitCast((r.A + BitCast((~BitCast(r.B AS Uint32)) AS Int32)) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c51,
	BitCast((BitCast((r.A - BitCast((~BitCast(r.B AS Uint32)) AS Int32)) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c52,
	BitCast((BitCast((r.A * BitCast((~BitCast(r.B AS Uint32)) AS Int32)) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c53,
	BitCast((BitCast((r.A % BitCast((~BitCast(r.B AS Uint32)) AS Int32)) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c54,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) & BitCast(BitCast((~BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c55,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) | BitCast(BitCast((~BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c56,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) ^ BitCast(BitCast((~BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c57,
	BitCast((BitCast(r.A AS Uint32) | BitCast(-5 AS Uint32)) AS Int32) as c58,
	BitCast((BitCast(-5 AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c59,
	BitCast((BitCast((r.A + (-5)) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c60,
	BitCast((BitCast((r.A - (-5)) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c61,
	BitCast((BitCast((r.A * (-5)) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c62,
	BitCast((BitCast((r.A % (-5)) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c63,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) & BitCast(-5 AS Uint32)) AS Int32) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c64,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) | BitCast(-5 AS Uint32)) AS Int32) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c65,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) ^ BitCast(-5 AS Uint32)) AS Int32) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c66
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	BitCast((BitCast(r.A AS Uint32) | BitCast(-5 AS Uint32)) AS Int32) as c1,
	BitCast((BitCast(-5 AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c2,
	BitCast((BitCast((r.A + (-5)) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c3,
	BitCast((BitCast((r.A - (-5)) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c4,
	BitCast((BitCast((r.A * (-5)) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c5,
	BitCast((BitCast((r.A % (-5)) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c6,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) & BitCast(-5 AS Uint32)) AS Int32) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c7,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) | BitCast(-5 AS Uint32)) AS Int32) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c8,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) ^ BitCast(-5 AS Uint32)) AS Int32) AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) as c9
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- cell Or/Or(Add(a,b),c): green
-- cell Or/Or(a,Add(b,c)): green
-- cell Or/Or(AsNotNull(Add(a,b)),c): green
-- cell Or/Or(a,AsNotNull(Add(b,c))): green
-- cell Or/Or(Sub(a,b),c): green
-- cell Or/Or(a,Sub(b,c)): skipped
-- cell Or/Or(AsNotNull(Sub(a,b)),c): green
-- cell Or/Or(a,AsNotNull(Sub(b,c))): skipped
-- cell Or/Or(Mul(a,b),c): green
-- cell Or/Or(a,Mul(b,c)): green
-- cell Or/Or(AsNotNull(Mul(a,b)),c): green
-- cell Or/Or(a,AsNotNull(Mul(b,c))): green
-- cell Or/Or(Div(a,b),c): green
-- cell Or/Or(a,Div(b,c)): green
-- cell Or/Or(AsNotNull(Div(a,b)),c): green
-- cell Or/Or(a,AsNotNull(Div(b,c))): green
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
-- cell Or/Or(TAdd(a,b),c): green
-- cell Or/Or(a,TAdd(b,c)): green
-- cell Or/Or(TAdd(a,NegLit),c): green
-- cell Or/Or(TSub(a,b),c): green
-- cell Or/Or(a,TSub(b,c)): green
-- cell Or/Or(TSub(a,NegLit),c): green
-- cell Or/Or(TMul(a,b),c): green
-- cell Or/Or(a,TMul(b,c)): green
-- cell Or/Or(TMul(a,NegLit),c): green
-- cell Or/Or(TAddOffset(a,b),c): green
-- cell Or/Or(a,TAddOffset(b,c)): green
-- cell Or/Or(TAddOffset(a,NegLit),c): green
-- cell Or/Or(a,Neg(b)): green
-- cell Or/Or(Neg(b),c): green
-- cell Or/Or(Add(a,Neg(b)),c): green
-- cell Or/Or(Sub(a,Neg(b)),c): green
-- cell Or/Or(Mul(a,Neg(b)),c): green
-- cell Or/Or(Div(a,Neg(b)),c): green
-- cell Or/Or(Mod(a,Neg(b)),c): green
-- cell Or/Or(And(a,Neg(b)),c): green
-- cell Or/Or(Or(a,Neg(b)),c): green
-- cell Or/Or(Xor(a,Neg(b)),c): green
-- cell Or/Or(a,Not(b)): green
-- cell Or/Or(Not(b),c): green
-- cell Or/Or(Add(a,Not(b)),c): green
-- cell Or/Or(Sub(a,Not(b)),c): green
-- cell Or/Or(Mul(a,Not(b)),c): green
-- cell Or/Or(Div(a,Not(b)),c): skipped
-- cell Or/Or(Mod(a,Not(b)),c): green
-- cell Or/Or(And(a,Not(b)),c): green
-- cell Or/Or(Or(a,Not(b)),c): green
-- cell Or/Or(Xor(a,Not(b)),c): green
-- cell Or/Or(a,NegLit(b)): green
-- cell Or/Or(NegLit(b),c): green
-- cell Or/Or(Add(a,NegLit(b)),c): green
-- cell Or/Or(Sub(a,NegLit(b)),c): green
-- cell Or/Or(Mul(a,NegLit(b)),c): green
-- cell Or/Or(Div(a,NegLit(b)),c): skipped
-- cell Or/Or(Mod(a,NegLit(b)),c): green
-- cell Or/Or(And(a,NegLit(b)),c): green
-- cell Or/Or(Or(a,NegLit(b)),c): green
-- cell Or/Or(Xor(a,NegLit(b)),c): green
-- cell Or/Or(a,NegParam(b)): green
-- cell Or/Or(NegParam(b),c): green
-- cell Or/Or(Add(a,NegParam(b)),c): green
-- cell Or/Or(Sub(a,NegParam(b)),c): green
-- cell Or/Or(Mul(a,NegParam(b)),c): green
-- cell Or/Or(Div(a,NegParam(b)),c): skipped
-- cell Or/Or(Mod(a,NegParam(b)),c): green
-- cell Or/Or(And(a,NegParam(b)),c): green
-- cell Or/Or(Or(a,NegParam(b)),c): green
-- cell Or/Or(Xor(a,NegParam(b)),c): green
