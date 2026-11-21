-- YDB Ydb
SELECT
	BitCast((BitCast((r.A + r.B) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c1,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast((r.B + r.C) AS Uint32)) AS Int32) as c2,
	BitCast((BitCast((r.A + r.B) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c3,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast((r.B + r.C) AS Uint32)) AS Int32) as c4,
	BitCast((BitCast((r.A - r.B) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c5,
	BitCast((BitCast((r.A - r.B) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c6,
	BitCast((BitCast((r.A * r.B) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c7,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast((r.B * r.C) AS Uint32)) AS Int32) as c8,
	BitCast((BitCast((r.A * r.B) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c9,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast((r.B * r.C) AS Uint32)) AS Int32) as c10,
	BitCast((BitCast((r.A / r.B) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c11,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast((r.B / r.C) AS Uint32)) AS Int32) as c12,
	BitCast((BitCast((r.A / r.B) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c13,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast((r.B / r.C) AS Uint32)) AS Int32) as c14,
	BitCast((BitCast((r.A % r.B) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c15,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast((r.B % r.C) AS Uint32)) AS Int32) as c16,
	BitCast((BitCast((r.A % r.B) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c17,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast((r.B % r.C) AS Uint32)) AS Int32) as c18,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) & BitCast(r.B AS Uint32)) AS Int32) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c19,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast(BitCast((BitCast(r.B AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) AS Uint32)) AS Int32) as c20,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) & BitCast(r.B AS Uint32)) AS Int32) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c21,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast(BitCast((BitCast(r.B AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) AS Uint32)) AS Int32) as c22,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) | BitCast(r.B AS Uint32)) AS Int32) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c23,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast(BitCast((BitCast(r.B AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) AS Uint32)) AS Int32) as c24,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) | BitCast(r.B AS Uint32)) AS Int32) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c25,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast(BitCast((BitCast(r.B AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) AS Uint32)) AS Int32) as c26,
	BitCast((BitCast((r.A + r.B) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c27,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast((r.B + r.C) AS Uint32)) AS Int32) as c28,
	BitCast((BitCast((r.A + -6) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c29,
	BitCast((BitCast((r.A - r.B) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c30,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast((r.B - r.C) AS Uint32)) AS Int32) as c31,
	BitCast((BitCast((r.A - -6) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c32,
	BitCast((BitCast((r.A * r.B) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c33,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast((r.B * r.C) AS Uint32)) AS Int32) as c34,
	BitCast((BitCast((r.A * -6) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c35,
	BitCast((BitCast((r.A + r.B) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c36,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast((r.B + r.C) AS Uint32)) AS Int32) as c37,
	BitCast((BitCast((r.A + -6) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c38,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast((-r.B) AS Uint32)) AS Int32) as c39,
	BitCast((BitCast((-r.B) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c40,
	BitCast((BitCast((r.A - r.B) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c41,
	BitCast((BitCast((r.A + r.B) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c42,
	BitCast((BitCast((r.A * (-r.B)) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c43,
	BitCast((BitCast((r.A / (-r.B)) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c44,
	BitCast((BitCast((r.A % (-r.B)) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c45,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) & BitCast((-r.B) AS Uint32)) AS Int32) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c46,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) | BitCast((-r.B) AS Uint32)) AS Int32) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c47,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) ^ BitCast((-r.B) AS Uint32)) AS Int32) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c48,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast(BitCast((~BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) as c49,
	BitCast((BitCast((r.A + BitCast((~BitCast(r.B AS Uint32)) AS Int32)) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c50,
	BitCast((BitCast((r.A - BitCast((~BitCast(r.B AS Uint32)) AS Int32)) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c51,
	BitCast((BitCast((r.A * BitCast((~BitCast(r.B AS Uint32)) AS Int32)) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c52,
	BitCast((BitCast((r.A % BitCast((~BitCast(r.B AS Uint32)) AS Int32)) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c53,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) & BitCast(BitCast((~BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c54,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) | BitCast(BitCast((~BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c55,
	BitCast((BitCast(r.A AS Uint32) ^ BitCast(-5 AS Uint32)) AS Int32) as c56,
	BitCast((BitCast(-5 AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c57,
	BitCast((BitCast((r.A + (-5)) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c58,
	BitCast((BitCast((r.A - (-5)) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c59,
	BitCast((BitCast((r.A * (-5)) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c60,
	BitCast((BitCast((r.A % (-5)) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c61,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) & BitCast(-5 AS Uint32)) AS Int32) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c62,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) | BitCast(-5 AS Uint32)) AS Int32) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c63,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) ^ BitCast(-5 AS Uint32)) AS Int32) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c64
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	BitCast((BitCast(r.A AS Uint32) ^ BitCast(-5 AS Uint32)) AS Int32) as c1,
	BitCast((BitCast(-5 AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c2,
	BitCast((BitCast((r.A + (-5)) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c3,
	BitCast((BitCast((r.A - (-5)) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c4,
	BitCast((BitCast((r.A * (-5)) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c5,
	BitCast((BitCast((r.A % (-5)) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c6,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) & BitCast(-5 AS Uint32)) AS Int32) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c7,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) | BitCast(-5 AS Uint32)) AS Int32) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c8,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) ^ BitCast(-5 AS Uint32)) AS Int32) AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) as c9
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- cell Xor/Xor(Add(a,b),c): green
-- cell Xor/Xor(a,Add(b,c)): green
-- cell Xor/Xor(AsNotNull(Add(a,b)),c): green
-- cell Xor/Xor(a,AsNotNull(Add(b,c))): green
-- cell Xor/Xor(Sub(a,b),c): green
-- cell Xor/Xor(a,Sub(b,c)): skipped
-- cell Xor/Xor(AsNotNull(Sub(a,b)),c): green
-- cell Xor/Xor(a,AsNotNull(Sub(b,c))): skipped
-- cell Xor/Xor(Mul(a,b),c): green
-- cell Xor/Xor(a,Mul(b,c)): green
-- cell Xor/Xor(AsNotNull(Mul(a,b)),c): green
-- cell Xor/Xor(a,AsNotNull(Mul(b,c))): green
-- cell Xor/Xor(Div(a,b),c): green
-- cell Xor/Xor(a,Div(b,c)): green
-- cell Xor/Xor(AsNotNull(Div(a,b)),c): green
-- cell Xor/Xor(a,AsNotNull(Div(b,c))): green
-- cell Xor/Xor(Mod(a,b),c): green
-- cell Xor/Xor(a,Mod(b,c)): green
-- cell Xor/Xor(AsNotNull(Mod(a,b)),c): green
-- cell Xor/Xor(a,AsNotNull(Mod(b,c))): green
-- cell Xor/Xor(And(a,b),c): green
-- cell Xor/Xor(a,And(b,c)): green
-- cell Xor/Xor(AsNotNull(And(a,b)),c): green
-- cell Xor/Xor(a,AsNotNull(And(b,c))): green
-- cell Xor/Xor(Or(a,b),c): green
-- cell Xor/Xor(a,Or(b,c)): green
-- cell Xor/Xor(AsNotNull(Or(a,b)),c): green
-- cell Xor/Xor(a,AsNotNull(Or(b,c))): green
-- cell Xor/Xor(Xor(a,b),c): skipped
-- cell Xor/Xor(a,Xor(b,c)): skipped
-- cell Xor/Xor(AsNotNull(Xor(a,b)),c): skipped
-- cell Xor/Xor(a,AsNotNull(Xor(b,c))): skipped
-- cell Xor/Xor(TAdd(a,b),c): green
-- cell Xor/Xor(a,TAdd(b,c)): green
-- cell Xor/Xor(TAdd(a,NegLit),c): green
-- cell Xor/Xor(TSub(a,b),c): green
-- cell Xor/Xor(a,TSub(b,c)): green
-- cell Xor/Xor(TSub(a,NegLit),c): green
-- cell Xor/Xor(TMul(a,b),c): green
-- cell Xor/Xor(a,TMul(b,c)): green
-- cell Xor/Xor(TMul(a,NegLit),c): green
-- cell Xor/Xor(TAddOffset(a,b),c): green
-- cell Xor/Xor(a,TAddOffset(b,c)): green
-- cell Xor/Xor(TAddOffset(a,NegLit),c): green
-- cell Xor/Xor(a,Neg(b)): green
-- cell Xor/Xor(Neg(b),c): green
-- cell Xor/Xor(Add(a,Neg(b)),c): green
-- cell Xor/Xor(Sub(a,Neg(b)),c): green
-- cell Xor/Xor(Mul(a,Neg(b)),c): green
-- cell Xor/Xor(Div(a,Neg(b)),c): green
-- cell Xor/Xor(Mod(a,Neg(b)),c): green
-- cell Xor/Xor(And(a,Neg(b)),c): green
-- cell Xor/Xor(Or(a,Neg(b)),c): green
-- cell Xor/Xor(Xor(a,Neg(b)),c): green
-- cell Xor/Xor(a,Not(b)): green
-- cell Xor/Xor(Not(b),c): skipped
-- cell Xor/Xor(Add(a,Not(b)),c): green
-- cell Xor/Xor(Sub(a,Not(b)),c): green
-- cell Xor/Xor(Mul(a,Not(b)),c): green
-- cell Xor/Xor(Div(a,Not(b)),c): skipped
-- cell Xor/Xor(Mod(a,Not(b)),c): green
-- cell Xor/Xor(And(a,Not(b)),c): green
-- cell Xor/Xor(Or(a,Not(b)),c): green
-- cell Xor/Xor(Xor(a,Not(b)),c): skipped
-- cell Xor/Xor(a,NegLit(b)): green
-- cell Xor/Xor(NegLit(b),c): green
-- cell Xor/Xor(Add(a,NegLit(b)),c): green
-- cell Xor/Xor(Sub(a,NegLit(b)),c): green
-- cell Xor/Xor(Mul(a,NegLit(b)),c): green
-- cell Xor/Xor(Div(a,NegLit(b)),c): skipped
-- cell Xor/Xor(Mod(a,NegLit(b)),c): green
-- cell Xor/Xor(And(a,NegLit(b)),c): green
-- cell Xor/Xor(Or(a,NegLit(b)),c): green
-- cell Xor/Xor(Xor(a,NegLit(b)),c): green
-- cell Xor/Xor(a,NegParam(b)): green
-- cell Xor/Xor(NegParam(b),c): green
-- cell Xor/Xor(Add(a,NegParam(b)),c): green
-- cell Xor/Xor(Sub(a,NegParam(b)),c): green
-- cell Xor/Xor(Mul(a,NegParam(b)),c): green
-- cell Xor/Xor(Div(a,NegParam(b)),c): skipped
-- cell Xor/Xor(Mod(a,NegParam(b)),c): green
-- cell Xor/Xor(And(a,NegParam(b)),c): green
-- cell Xor/Xor(Or(a,NegParam(b)),c): green
-- cell Xor/Xor(Xor(a,NegParam(b)),c): green
