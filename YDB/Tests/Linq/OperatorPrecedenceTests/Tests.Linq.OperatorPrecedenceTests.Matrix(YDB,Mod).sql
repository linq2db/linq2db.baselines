-- YDB Ydb
SELECT
	(r.A + r.B) % r.C as c1,
	r.A % (r.B + r.C) as c2,
	(r.A + r.B) % r.C as c3,
	r.A % (r.B + r.C) as c4,
	(r.A - r.B) % r.C as c5,
	r.A % (r.B - r.C) as c6,
	(r.A - r.B) % r.C as c7,
	r.A % (r.B - r.C) as c8,
	r.A / r.B % r.C as c9,
	r.A / r.B % r.C as c10,
	r.A % r.B % r.C as c11,
	r.A % r.B % r.C as c12,
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32))) % r.C as c13,
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32))) % r.C as c14,
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32))) % r.C as c15,
	r.A % (Unwrap(CAST(r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32))) as c16,
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32))) % r.C as c17,
	r.A % (Unwrap(CAST(r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32))) as c18,
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32))) % r.C as c19,
	r.A % (Unwrap(CAST(r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32))) as c20,
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32))) % r.C as c21,
	r.A % (Unwrap(CAST(r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32))) as c22,
	(r.A + r.B) % r.C as c23,
	r.A % (r.B + r.C) as c24,
	(r.A + -6) % r.C as c25,
	(r.A - r.B) % r.C as c26,
	r.A % (r.B - r.C) as c27,
	(r.A - -6) % r.C as c28,
	(r.A * r.B) % r.C as c29,
	r.A % (r.B * r.C) as c30,
	(r.A * -6) % r.C as c31,
	(r.A / r.B) % r.C as c32,
	r.A % (r.B / r.C) as c33,
	(r.A / -6) % r.C as c34,
	(r.A + r.B) % r.C as c35,
	r.A % (r.B + r.C) as c36,
	(r.A + -6) % r.C as c37,
	r.A % (-r.B) as c38,
	(r.A - r.B) % r.C as c39,
	(r.A + r.B) % r.C as c40,
	r.A / (-r.B) % r.C as c41,
	r.A % (-r.B) % r.C as c42,
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-r.B AS Uint32))) % r.C as c43,
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-r.B AS Uint32))) % r.C as c44,
	r.A % (~Unwrap(CAST(r.B AS Uint32))) as c45,
	(r.A + (~Unwrap(CAST(r.B AS Uint32)))) % r.C as c46,
	(r.A - (~Unwrap(CAST(r.B AS Uint32)))) % r.C as c47,
	r.A * (~Unwrap(CAST(r.B AS Uint32))) % r.C as c48,
	r.A % (~Unwrap(CAST(r.B AS Uint32))) % r.C as c49,
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32))) % r.C as c50,
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32))) % r.C as c51,
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32))) % r.C as c52,
	r.A % (-5) as c53,
	(-5) % r.C as c54,
	(r.A + (-5)) % r.C as c55,
	(r.A - (-5)) % r.C as c56,
	r.A * (-5) % r.C as c57,
	r.A % (-5) % r.C as c58,
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32))) % r.C as c59,
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32))) % r.C as c60,
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32))) % r.C as c61
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A + r.B) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % (r.B + r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A + r.B) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % (r.B + r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A - r.B) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % (r.B - r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A - r.B) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % (r.B - r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A / r.B % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A / r.B % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % r.B % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % r.B % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32))) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32))) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32))) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % (Unwrap(CAST(r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32))) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32))) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % (Unwrap(CAST(r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32))) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32))) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % (Unwrap(CAST(r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32))) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32))) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % (Unwrap(CAST(r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32))) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A + r.B) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % (r.B + r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A + -6) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A - r.B) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % (r.B - r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A - -6) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A * r.B) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % (r.B * r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A * -6) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A / r.B) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % (r.B / r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A / -6) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A + r.B) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % (r.B + r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A + -6) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % (-r.B) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A - r.B) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A + r.B) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A / (-r.B) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % (-r.B) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-r.B AS Uint32))) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-r.B AS Uint32))) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % (~Unwrap(CAST(r.B AS Uint32))) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A + (~Unwrap(CAST(r.B AS Uint32)))) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A - (~Unwrap(CAST(r.B AS Uint32)))) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * (~Unwrap(CAST(r.B AS Uint32))) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % (~Unwrap(CAST(r.B AS Uint32))) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32))) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32))) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32))) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % (-5) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(-5) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A + (-5)) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A - (-5)) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * (-5) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % (-5) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32))) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32))) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32))) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % (-5) as c1,
	(-5) % r.C as c2,
	(r.A + (-5)) % r.C as c3,
	(r.A - (-5)) % r.C as c4,
	r.A * (-5) % r.C as c5,
	r.A % (-5) % r.C as c6,
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32))) % r.C as c7,
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32))) % r.C as c8,
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32))) % r.C as c9
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % (-5) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(-5) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A + (-5)) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A - (-5)) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * (-5) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A % (-5) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32))) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32))) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32))) % r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- cell Mod/Mod(Add(a,b),c): green
-- cell Mod/Mod(a,Add(b,c)): green
-- cell Mod/Mod(AsNotNull(Add(a,b)),c): green
-- cell Mod/Mod(a,AsNotNull(Add(b,c))): green
-- cell Mod/Mod(Sub(a,b),c): green
-- cell Mod/Mod(a,Sub(b,c)): green
-- cell Mod/Mod(AsNotNull(Sub(a,b)),c): green
-- cell Mod/Mod(a,AsNotNull(Sub(b,c))): green
-- cell Mod/Mod(Mul(a,b),c): skipped
-- cell Mod/Mod(a,Mul(b,c)): skipped
-- cell Mod/Mod(AsNotNull(Mul(a,b)),c): skipped
-- cell Mod/Mod(a,AsNotNull(Mul(b,c))): skipped
-- cell Mod/Mod(Div(a,b),c): green
-- cell Mod/Mod(a,Div(b,c)): skipped
-- cell Mod/Mod(AsNotNull(Div(a,b)),c): green
-- cell Mod/Mod(a,AsNotNull(Div(b,c))): skipped
-- cell Mod/Mod(Mod(a,b),c): green
-- cell Mod/Mod(a,Mod(b,c)): skipped
-- cell Mod/Mod(AsNotNull(Mod(a,b)),c): green
-- cell Mod/Mod(a,AsNotNull(Mod(b,c))): skipped
-- cell Mod/Mod(And(a,b),c): green
-- cell Mod/Mod(a,And(b,c)): skipped
-- cell Mod/Mod(AsNotNull(And(a,b)),c): green
-- cell Mod/Mod(a,AsNotNull(And(b,c))): skipped
-- cell Mod/Mod(Or(a,b),c): green
-- cell Mod/Mod(a,Or(b,c)): green
-- cell Mod/Mod(AsNotNull(Or(a,b)),c): green
-- cell Mod/Mod(a,AsNotNull(Or(b,c))): green
-- cell Mod/Mod(Xor(a,b),c): green
-- cell Mod/Mod(a,Xor(b,c)): green
-- cell Mod/Mod(AsNotNull(Xor(a,b)),c): green
-- cell Mod/Mod(a,AsNotNull(Xor(b,c))): green
-- cell Mod/Mod(TAdd(a,b),c): green
-- cell Mod/Mod(a,TAdd(b,c)): green
-- cell Mod/Mod(TAdd(a,NegLit),c): green
-- cell Mod/Mod(TSub(a,b),c): green
-- cell Mod/Mod(a,TSub(b,c)): green
-- cell Mod/Mod(TSub(a,NegLit),c): green
-- cell Mod/Mod(TMul(a,b),c): green
-- cell Mod/Mod(a,TMul(b,c)): green
-- cell Mod/Mod(TMul(a,NegLit),c): green
-- cell Mod/Mod(TDiv(a,b),c): green
-- cell Mod/Mod(a,TDiv(b,c)): green
-- cell Mod/Mod(TDiv(a,NegLit),c): green
-- cell Mod/Mod(TAddOffset(a,b),c): green
-- cell Mod/Mod(a,TAddOffset(b,c)): green
-- cell Mod/Mod(TAddOffset(a,NegLit),c): green
-- cell Mod/Mod(a,Neg(b)): green
-- cell Mod/Mod(Neg(b),c): skipped
-- cell Mod/Mod(Add(a,Neg(b)),c): green
-- cell Mod/Mod(Sub(a,Neg(b)),c): green
-- cell Mod/Mod(Mul(a,Neg(b)),c): skipped
-- cell Mod/Mod(Div(a,Neg(b)),c): green
-- cell Mod/Mod(Mod(a,Neg(b)),c): green
-- cell Mod/Mod(And(a,Neg(b)),c): skipped
-- cell Mod/Mod(Or(a,Neg(b)),c): error
-- cell Mod/Mod(Xor(a,Neg(b)),c): error
-- cell Mod/Mod(a,Not(b)): green
-- cell Mod/Mod(Not(b),c): skipped
-- cell Mod/Mod(Add(a,Not(b)),c): green
-- cell Mod/Mod(Sub(a,Not(b)),c): green
-- cell Mod/Mod(Mul(a,Not(b)),c): green
-- cell Mod/Mod(Div(a,Not(b)),c): skipped
-- cell Mod/Mod(Mod(a,Not(b)),c): green
-- cell Mod/Mod(And(a,Not(b)),c): green
-- cell Mod/Mod(Or(a,Not(b)),c): green
-- cell Mod/Mod(Xor(a,Not(b)),c): green
-- cell Mod/Mod(a,NegLit(b)): green
-- cell Mod/Mod(NegLit(b),c): green
-- cell Mod/Mod(Add(a,NegLit(b)),c): green
-- cell Mod/Mod(Sub(a,NegLit(b)),c): green
-- cell Mod/Mod(Mul(a,NegLit(b)),c): green
-- cell Mod/Mod(Div(a,NegLit(b)),c): skipped
-- cell Mod/Mod(Mod(a,NegLit(b)),c): green
-- cell Mod/Mod(And(a,NegLit(b)),c): error
-- cell Mod/Mod(Or(a,NegLit(b)),c): error
-- cell Mod/Mod(Xor(a,NegLit(b)),c): error
-- cell Mod/Mod(a,NegParam(b)): green
-- cell Mod/Mod(NegParam(b),c): green
-- cell Mod/Mod(Add(a,NegParam(b)),c): green
-- cell Mod/Mod(Sub(a,NegParam(b)),c): green
-- cell Mod/Mod(Mul(a,NegParam(b)),c): green
-- cell Mod/Mod(Div(a,NegParam(b)),c): skipped
-- cell Mod/Mod(Mod(a,NegParam(b)),c): green
-- cell Mod/Mod(And(a,NegParam(b)),c): error
-- cell Mod/Mod(Or(a,NegParam(b)),c): error
-- cell Mod/Mod(Xor(a,NegParam(b)),c): error
