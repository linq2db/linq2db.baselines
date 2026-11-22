-- YDB Ydb
SELECT
	BitCast((BitCast((r.A + r.B) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c1,
	BitCast((BitCast(r.A AS Uint32) & BitCast((r.B + r.C) AS Uint32)) AS Int32) as c2,
	BitCast((BitCast((r.A + r.B) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c3,
	BitCast((BitCast(r.A AS Uint32) & BitCast((r.B + r.C) AS Uint32)) AS Int32) as c4,
	BitCast((BitCast((r.A - r.B) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c5,
	BitCast((BitCast(r.A AS Uint32) & BitCast((r.B - r.C) AS Uint32)) AS Int32) as c6,
	BitCast((BitCast((r.A - r.B) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c7,
	BitCast((BitCast(r.A AS Uint32) & BitCast((r.B - r.C) AS Uint32)) AS Int32) as c8,
	BitCast((BitCast((r.A * r.B) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c9,
	BitCast((BitCast(r.A AS Uint32) & BitCast((r.B * r.C) AS Uint32)) AS Int32) as c10,
	BitCast((BitCast((r.A * r.B) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c11,
	BitCast((BitCast(r.A AS Uint32) & BitCast((r.B * r.C) AS Uint32)) AS Int32) as c12,
	BitCast((BitCast((r.A / r.B) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c13,
	BitCast((BitCast(r.A AS Uint32) & BitCast((r.B / r.C) AS Uint32)) AS Int32) as c14,
	BitCast((BitCast((r.A / r.B) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c15,
	BitCast((BitCast(r.A AS Uint32) & BitCast((r.B / r.C) AS Uint32)) AS Int32) as c16,
	BitCast((BitCast((r.A % r.B) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c17,
	BitCast((BitCast(r.A AS Uint32) & BitCast((r.B % r.C) AS Uint32)) AS Int32) as c18,
	BitCast((BitCast((r.A % r.B) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c19,
	BitCast((BitCast(r.A AS Uint32) & BitCast((r.B % r.C) AS Uint32)) AS Int32) as c20,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) | BitCast(r.B AS Uint32)) AS Int32) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c21,
	BitCast((BitCast(r.A AS Uint32) & BitCast(BitCast((BitCast(r.B AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) AS Uint32)) AS Int32) as c22,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) | BitCast(r.B AS Uint32)) AS Int32) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c23,
	BitCast((BitCast(r.A AS Uint32) & BitCast(BitCast((BitCast(r.B AS Uint32) | BitCast(r.C AS Uint32)) AS Int32) AS Uint32)) AS Int32) as c24,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) ^ BitCast(r.B AS Uint32)) AS Int32) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c25,
	BitCast((BitCast(r.A AS Uint32) & BitCast(BitCast((BitCast(r.B AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) AS Uint32)) AS Int32) as c26,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) ^ BitCast(r.B AS Uint32)) AS Int32) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c27,
	BitCast((BitCast(r.A AS Uint32) & BitCast(BitCast((BitCast(r.B AS Uint32) ^ BitCast(r.C AS Uint32)) AS Int32) AS Uint32)) AS Int32) as c28,
	BitCast((BitCast((r.A + r.B) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c29,
	BitCast((BitCast(r.A AS Uint32) & BitCast((r.B + r.C) AS Uint32)) AS Int32) as c30,
	BitCast((BitCast((r.A + -6) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c31,
	BitCast((BitCast((r.A - r.B) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c32,
	BitCast((BitCast(r.A AS Uint32) & BitCast((r.B - r.C) AS Uint32)) AS Int32) as c33,
	BitCast((BitCast((r.A - -6) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c34,
	BitCast((BitCast((r.A * r.B) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c35,
	BitCast((BitCast(r.A AS Uint32) & BitCast((r.B * r.C) AS Uint32)) AS Int32) as c36,
	BitCast((BitCast((r.A * -6) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c37,
	BitCast((BitCast((r.A + r.B) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c38,
	BitCast((BitCast(r.A AS Uint32) & BitCast((r.B + r.C) AS Uint32)) AS Int32) as c39,
	BitCast((BitCast((r.A + -6) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c40,
	BitCast((BitCast(r.A AS Uint32) & BitCast((-r.B) AS Uint32)) AS Int32) as c41,
	BitCast((BitCast((-r.B) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c42,
	BitCast((BitCast((r.A - r.B) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c43,
	BitCast((BitCast((r.A + r.B) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c44,
	BitCast((BitCast((r.A * -r.B) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c45,
	BitCast((BitCast((r.A / -r.B) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c46,
	BitCast((BitCast((r.A % -r.B) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c47,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) & BitCast((-r.B) AS Uint32)) AS Int32) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c48,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) | BitCast((-r.B) AS Uint32)) AS Int32) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c49,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) ^ BitCast((-r.B) AS Uint32)) AS Int32) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c50,
	BitCast((BitCast(r.A AS Uint32) & BitCast(BitCast((~BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) as c51,
	BitCast((BitCast(BitCast((~BitCast(r.B AS Uint32)) AS Int32) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c52,
	BitCast((BitCast((r.A + BitCast((~BitCast(r.B AS Uint32)) AS Int32)) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c53,
	BitCast((BitCast((r.A - BitCast((~BitCast(r.B AS Uint32)) AS Int32)) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c54,
	BitCast((BitCast((r.A * BitCast((~BitCast(r.B AS Uint32)) AS Int32)) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c55,
	BitCast((BitCast((r.A % BitCast((~BitCast(r.B AS Uint32)) AS Int32)) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c56,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) & BitCast(BitCast((~BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c57,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) | BitCast(BitCast((~BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c58,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) ^ BitCast(BitCast((~BitCast(r.B AS Uint32)) AS Int32) AS Uint32)) AS Int32) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c59,
	BitCast((BitCast(r.A AS Uint32) & BitCast(-5 AS Uint32)) AS Int32) as c60,
	BitCast((BitCast(-5 AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c61,
	BitCast((BitCast((r.A + -5) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c62,
	BitCast((BitCast((r.A - -5) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c63,
	BitCast((BitCast((r.A * -5) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c64,
	BitCast((BitCast((r.A % -5) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c65,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) & BitCast(-5 AS Uint32)) AS Int32) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c66,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) | BitCast(-5 AS Uint32)) AS Int32) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c67,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) ^ BitCast(-5 AS Uint32)) AS Int32) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c68
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	BitCast((BitCast(r.A AS Uint32) & BitCast(-5 AS Uint32)) AS Int32) as c1,
	BitCast((BitCast(-5 AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c2,
	BitCast((BitCast((r.A + -5) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c3,
	BitCast((BitCast((r.A - -5) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c4,
	BitCast((BitCast((r.A * -5) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c5,
	BitCast((BitCast((r.A % -5) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c6,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) & BitCast(-5 AS Uint32)) AS Int32) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c7,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) | BitCast(-5 AS Uint32)) AS Int32) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c8,
	BitCast((BitCast(BitCast((BitCast(r.A AS Uint32) ^ BitCast(-5 AS Uint32)) AS Int32) AS Uint32) & BitCast(r.C AS Uint32)) AS Int32) as c9
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
