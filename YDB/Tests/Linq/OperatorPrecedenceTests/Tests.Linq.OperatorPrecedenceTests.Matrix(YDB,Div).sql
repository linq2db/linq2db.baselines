-- YDB Ydb
SELECT
	(r.A + r.B) / r.C as c1,
	r.A / (r.B + r.C) as c2,
	(r.A + r.B) / r.C as c3,
	r.A / (r.B + r.C) as c4,
	(r.A - r.B) / r.C as c5,
	r.A / (r.B - r.C) as c6,
	(r.A - r.B) / r.C as c7,
	r.A / (r.B - r.C) as c8,
	r.A / (r.B * r.C) as c9,
	r.A / (r.B * r.C) as c10,
	(r.A / r.B) / r.C as c11,
	r.A / (r.B / r.C) as c12,
	(r.A / r.B) / r.C as c13,
	r.A / (r.B / r.C) as c14,
	r.A / (Unwrap(CAST(r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32))) as c15,
	r.A / (Unwrap(CAST(r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32))) as c16,
	r.A / -r.B as c17,
	(r.A - r.B) / r.C as c18,
	(r.A + r.B) / r.C as c19,
	(r.A / -r.B) / r.C as c20,
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-r.B AS Uint32))) / r.C as c21,
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-r.B AS Uint32))) / r.C as c22,
	(r.A * (~Unwrap(CAST(r.B AS Uint32)))) / r.C as c23,
	(r.A * -5) / r.C as c24,
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32))) / r.C as c25
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A + r.B) / r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A / (r.B + r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A + r.B) / r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A / (r.B + r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A - r.B) / r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A / (r.B - r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A - r.B) / r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A / (r.B - r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A / (r.B * r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A / (r.B * r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A / r.B) / r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A / (r.B / r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A / r.B) / r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A / (r.B / r.C) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A / (Unwrap(CAST(r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32))) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A / (Unwrap(CAST(r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32))) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.A / -r.B as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A - r.B) / r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A + r.B) / r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A / -r.B) / r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-r.B AS Uint32))) / r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-r.B AS Uint32))) / r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A * (~Unwrap(CAST(r.B AS Uint32)))) / r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A * -5) / r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32))) / r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A * -5) / r.C as c1,
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32))) / r.C as c2
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(r.A * -5) / r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32))) / r.C as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- cell Div/Div(Add(a,b),c): green
-- cell Div/Div(a,Add(b,c)): green
-- cell Div/Div(AsNotNull(Add(a,b)),c): green
-- cell Div/Div(a,AsNotNull(Add(b,c))): green
-- cell Div/Div(Sub(a,b),c): green
-- cell Div/Div(a,Sub(b,c)): green
-- cell Div/Div(AsNotNull(Sub(a,b)),c): green
-- cell Div/Div(a,AsNotNull(Sub(b,c))): green
-- cell Div/Div(Mul(a,b),c): skipped
-- cell Div/Div(a,Mul(b,c)): green
-- cell Div/Div(AsNotNull(Mul(a,b)),c): skipped
-- cell Div/Div(a,AsNotNull(Mul(b,c))): green
-- cell Div/Div(Div(a,b),c): green
-- cell Div/Div(a,Div(b,c)): green
-- cell Div/Div(AsNotNull(Div(a,b)),c): green
-- cell Div/Div(a,AsNotNull(Div(b,c))): green
-- cell Div/Div(Mod(a,b),c): skipped
-- cell Div/Div(a,Mod(b,c)): skipped
-- cell Div/Div(AsNotNull(Mod(a,b)),c): skipped
-- cell Div/Div(a,AsNotNull(Mod(b,c))): skipped
-- cell Div/Div(And(a,b),c): skipped
-- cell Div/Div(a,And(b,c)): skipped
-- cell Div/Div(AsNotNull(And(a,b)),c): skipped
-- cell Div/Div(a,AsNotNull(And(b,c))): skipped
-- cell Div/Div(Or(a,b),c): skipped
-- cell Div/Div(a,Or(b,c)): skipped
-- cell Div/Div(AsNotNull(Or(a,b)),c): skipped
-- cell Div/Div(a,AsNotNull(Or(b,c))): skipped
-- cell Div/Div(Xor(a,b),c): skipped
-- cell Div/Div(a,Xor(b,c)): green
-- cell Div/Div(AsNotNull(Xor(a,b)),c): skipped
-- cell Div/Div(a,AsNotNull(Xor(b,c))): green
-- cell Div/Div(a,Neg(b)): green
-- cell Div/Div(Neg(b),c): skipped
-- cell Div/Div(Add(a,Neg(b)),c): green
-- cell Div/Div(Sub(a,Neg(b)),c): green
-- cell Div/Div(Mul(a,Neg(b)),c): skipped
-- cell Div/Div(Div(a,Neg(b)),c): green
-- cell Div/Div(Mod(a,Neg(b)),c): skipped
-- cell Div/Div(And(a,Neg(b)),c): error
-- cell Div/Div(Or(a,Neg(b)),c): skipped
-- cell Div/Div(Xor(a,Neg(b)),c): error
-- cell Div/Div(a,Not(b)): skipped
-- cell Div/Div(Not(b),c): skipped
-- cell Div/Div(Add(a,Not(b)),c): skipped
-- cell Div/Div(Sub(a,Not(b)),c): skipped
-- cell Div/Div(Mul(a,Not(b)),c): green
-- cell Div/Div(Div(a,Not(b)),c): skipped
-- cell Div/Div(Mod(a,Not(b)),c): skipped
-- cell Div/Div(And(a,Not(b)),c): skipped
-- cell Div/Div(Or(a,Not(b)),c): skipped
-- cell Div/Div(Xor(a,Not(b)),c): skipped
-- cell Div/Div(a,NegLit(b)): skipped
-- cell Div/Div(NegLit(b),c): skipped
-- cell Div/Div(Add(a,NegLit(b)),c): skipped
-- cell Div/Div(Sub(a,NegLit(b)),c): skipped
-- cell Div/Div(Mul(a,NegLit(b)),c): green
-- cell Div/Div(Div(a,NegLit(b)),c): skipped
-- cell Div/Div(Mod(a,NegLit(b)),c): skipped
-- cell Div/Div(And(a,NegLit(b)),c): error
-- cell Div/Div(Or(a,NegLit(b)),c): skipped
-- cell Div/Div(Xor(a,NegLit(b)),c): skipped
-- cell Div/Div(a,NegParam(b)): skipped
-- cell Div/Div(NegParam(b),c): skipped
-- cell Div/Div(Add(a,NegParam(b)),c): skipped
-- cell Div/Div(Sub(a,NegParam(b)),c): skipped
-- cell Div/Div(Mul(a,NegParam(b)),c): green
-- cell Div/Div(Div(a,NegParam(b)),c): skipped
-- cell Div/Div(Mod(a,NegParam(b)),c): skipped
-- cell Div/Div(And(a,NegParam(b)),c): error
-- cell Div/Div(Or(a,NegParam(b)),c): skipped
-- cell Div/Div(Xor(a,NegParam(b)),c): skipped
