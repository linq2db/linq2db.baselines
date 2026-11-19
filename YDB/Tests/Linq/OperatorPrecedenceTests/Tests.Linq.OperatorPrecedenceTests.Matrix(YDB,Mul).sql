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
	(r.A / r.B) * r.C as c9,
	r.A * (r.B / r.C) as c10,
	(r.A / r.B) * r.C as c11,
	r.A * (r.B / r.C) as c12,
	(r.A % r.B) * r.C as c13,
	r.A * (r.B % r.C) as c14,
	(r.A % r.B) * r.C as c15,
	r.A * (r.B % r.C) as c16,
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32))) * r.C as c17,
	r.A * (Unwrap(CAST(r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32))) as c18,
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32))) * r.C as c19,
	r.A * (Unwrap(CAST(r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32))) as c20,
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32))) * r.C as c21,
	r.A * (Unwrap(CAST(r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32))) as c22,
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32))) * r.C as c23,
	r.A * (Unwrap(CAST(r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32))) as c24,
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32))) * r.C as c25,
	r.A * (Unwrap(CAST(r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32))) as c26,
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32))) * r.C as c27,
	r.A * (Unwrap(CAST(r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32))) as c28,
	r.A * -r.B as c29,
	(r.A - r.B) * r.C as c30,
	(r.A + r.B) * r.C as c31,
	(r.A / -r.B) * r.C as c32,
	(r.A % -r.B) * r.C as c33,
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-r.B AS Uint32))) * r.C as c34,
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-r.B AS Uint32))) * r.C as c35,
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-r.B AS Uint32))) * r.C as c36,
	r.A * (~Unwrap(CAST(r.B AS Uint32))) as c37,
	(~Unwrap(CAST(r.B AS Uint32))) * r.C as c38,
	(r.A + (~Unwrap(CAST(r.B AS Uint32)))) * r.C as c39,
	(r.A - (~Unwrap(CAST(r.B AS Uint32)))) * r.C as c40,
	(r.A * (~Unwrap(CAST(r.B AS Uint32)))) * r.C as c41,
	(r.A / (~Unwrap(CAST(r.B AS Uint32)))) * r.C as c42,
	(r.A % (~Unwrap(CAST(r.B AS Uint32)))) * r.C as c43,
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32))) * r.C as c44,
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32))) * r.C as c45,
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32))) * r.C as c46,
	r.A * -5 as c47,
	-5 * r.C as c48,
	(r.A + -5) * r.C as c49,
	(r.A - -5) * r.C as c50,
	(r.A * -5) * r.C as c51,
	(r.A / -5) * r.C as c52,
	(r.A % -5) * r.C as c53,
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32))) * r.C as c54,
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32))) * r.C as c55,
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32))) * r.C as c56
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A + r.B) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * (r.B + r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A + r.B) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * (r.B + r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A - r.B) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * (r.B - r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A - r.B) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * (r.B - r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A / r.B) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * (r.B / r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A / r.B) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * (r.B / r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A % r.B) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * (r.B % r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A % r.B) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * (r.B % r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32))) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * (Unwrap(CAST(r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32))) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32))) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * (Unwrap(CAST(r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32))) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32))) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * (Unwrap(CAST(r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32))) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32))) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * (Unwrap(CAST(r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32))) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32))) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * (Unwrap(CAST(r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32))) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32))) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * (Unwrap(CAST(r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32))) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * -r.B as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A - r.B) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A + r.B) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A / -r.B) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A % -r.B) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-r.B AS Uint32))) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-r.B AS Uint32))) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-r.B AS Uint32))) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * (~Unwrap(CAST(r.B AS Uint32))) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(~Unwrap(CAST(r.B AS Uint32))) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A + (~Unwrap(CAST(r.B AS Uint32)))) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A - (~Unwrap(CAST(r.B AS Uint32)))) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A * (~Unwrap(CAST(r.B AS Uint32)))) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A / (~Unwrap(CAST(r.B AS Uint32)))) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A % (~Unwrap(CAST(r.B AS Uint32)))) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32))) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32))) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32))) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * -5 as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	-5 * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A + -5) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A - -5) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A * -5) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A / -5) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A % -5) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32))) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32))) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32))) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * -5 as c1,
	-5 * r.C as c2,
	(r.A + -5) * r.C as c3,
	(r.A - -5) * r.C as c4,
	(r.A * -5) * r.C as c5,
	(r.A / -5) * r.C as c6,
	(r.A % -5) * r.C as c7,
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32))) * r.C as c8,
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32))) * r.C as c9,
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32))) * r.C as c10
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A * -5 as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	-5 * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A + -5) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A - -5) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A * -5) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A / -5) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A % -5) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32))) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32))) * r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32))) * r.C as c1
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
-- cell Mul/Mul(a,Div(b,c)): green
-- cell Mul/Mul(AsNotNull(Div(a,b)),c): green
-- cell Mul/Mul(a,AsNotNull(Div(b,c))): green
-- cell Mul/Mul(Mod(a,b),c): green
-- cell Mul/Mul(a,Mod(b,c)): green
-- cell Mul/Mul(AsNotNull(Mod(a,b)),c): green
-- cell Mul/Mul(a,AsNotNull(Mod(b,c))): green
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
-- cell Mul/Mul(a,Neg(b)): green
-- cell Mul/Mul(Neg(b),c): skipped
-- cell Mul/Mul(Add(a,Neg(b)),c): green
-- cell Mul/Mul(Sub(a,Neg(b)),c): green
-- cell Mul/Mul(Mul(a,Neg(b)),c): skipped
-- cell Mul/Mul(Div(a,Neg(b)),c): green
-- cell Mul/Mul(Mod(a,Neg(b)),c): green
-- cell Mul/Mul(And(a,Neg(b)),c): error
-- cell Mul/Mul(Or(a,Neg(b)),c): error
-- cell Mul/Mul(Xor(a,Neg(b)),c): error
-- cell Mul/Mul(a,Not(b)): green
-- cell Mul/Mul(Not(b),c): green
-- cell Mul/Mul(Add(a,Not(b)),c): green
-- cell Mul/Mul(Sub(a,Not(b)),c): green
-- cell Mul/Mul(Mul(a,Not(b)),c): green
-- cell Mul/Mul(Div(a,Not(b)),c): green
-- cell Mul/Mul(Mod(a,Not(b)),c): green
-- cell Mul/Mul(And(a,Not(b)),c): green
-- cell Mul/Mul(Or(a,Not(b)),c): green
-- cell Mul/Mul(Xor(a,Not(b)),c): green
-- cell Mul/Mul(a,NegLit(b)): green
-- cell Mul/Mul(NegLit(b),c): green
-- cell Mul/Mul(Add(a,NegLit(b)),c): green
-- cell Mul/Mul(Sub(a,NegLit(b)),c): green
-- cell Mul/Mul(Mul(a,NegLit(b)),c): green
-- cell Mul/Mul(Div(a,NegLit(b)),c): green
-- cell Mul/Mul(Mod(a,NegLit(b)),c): green
-- cell Mul/Mul(And(a,NegLit(b)),c): error
-- cell Mul/Mul(Or(a,NegLit(b)),c): error
-- cell Mul/Mul(Xor(a,NegLit(b)),c): error
-- cell Mul/Mul(a,NegParam(b)): green
-- cell Mul/Mul(NegParam(b),c): green
-- cell Mul/Mul(Add(a,NegParam(b)),c): green
-- cell Mul/Mul(Sub(a,NegParam(b)),c): green
-- cell Mul/Mul(Mul(a,NegParam(b)),c): green
-- cell Mul/Mul(Div(a,NegParam(b)),c): green
-- cell Mul/Mul(Mod(a,NegParam(b)),c): green
-- cell Mul/Mul(And(a,NegParam(b)),c): error
-- cell Mul/Mul(Or(a,NegParam(b)),c): error
-- cell Mul/Mul(Xor(a,NegParam(b)),c): error
