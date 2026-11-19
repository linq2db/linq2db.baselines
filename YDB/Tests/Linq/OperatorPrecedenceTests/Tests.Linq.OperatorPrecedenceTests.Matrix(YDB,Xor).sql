-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1,
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B + r.C AS Uint32)) as c2,
	Unwrap(CAST(r.A + r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c3,
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B + r.C AS Uint32)) as c4,
	Unwrap(CAST(r.A - r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c5,
	Unwrap(CAST(r.A - r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c6,
	Unwrap(CAST(r.A * r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c7,
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B * r.C AS Uint32)) as c8,
	Unwrap(CAST(r.A * r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c9,
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B * r.C AS Uint32)) as c10,
	Unwrap(CAST(r.A / r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c11,
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B / r.C AS Uint32)) as c12,
	Unwrap(CAST(r.A / r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c13,
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B / r.C AS Uint32)) as c14,
	Unwrap(CAST(r.A % r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c15,
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B % r.C AS Uint32)) as c16,
	Unwrap(CAST(r.A % r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c17,
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B % r.C AS Uint32)) as c18,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c19,
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c20,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c21,
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c22,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c23,
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c24,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c25,
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c26,
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-r.B AS Uint32)) as c27,
	Unwrap(CAST(-r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c28,
	Unwrap(CAST(r.A - r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c29,
	Unwrap(CAST(r.A + r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c30,
	Unwrap(CAST(r.A * -r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c31,
	Unwrap(CAST(r.A / -r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c32,
	Unwrap(CAST(r.A % -r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c33,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-r.B AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c34,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-r.B AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c35,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-r.B AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c36,
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) as c37,
	Unwrap(CAST(r.A + (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c38,
	Unwrap(CAST(r.A - (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c39,
	Unwrap(CAST(r.A * (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c40,
	Unwrap(CAST(r.A % (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c41,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c42,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c43,
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32)) as c44,
	Unwrap(CAST(-5 AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c45,
	Unwrap(CAST(r.A + -5 AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c46,
	Unwrap(CAST(r.A - -5 AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c47,
	Unwrap(CAST(r.A * -5 AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c48,
	Unwrap(CAST(r.A % -5 AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c49,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c50,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c51,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c52
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B + r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B + r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A - r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A - r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A * r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B * r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A * r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B * r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A / r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B / r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A / r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B / r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A % r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B % r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A % r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B % r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-r.B AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(-r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A - r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A * -r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A / -r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A % -r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-r.B AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-r.B AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-r.B AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A - (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A * (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A % (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(-5 AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + -5 AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A - -5 AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A * -5 AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A % -5 AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32)) as c1,
	Unwrap(CAST(-5 AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c2,
	Unwrap(CAST(r.A + -5 AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c3,
	Unwrap(CAST(r.A - -5 AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c4,
	Unwrap(CAST(r.A * -5 AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c5,
	Unwrap(CAST(r.A % -5 AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c6,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c7,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c8,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c9
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(-5 AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + -5 AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A - -5 AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A * -5 AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A % -5 AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32)) AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) as c1
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
-- cell Xor/Xor(a,Neg(b)): error
-- cell Xor/Xor(Neg(b),c): error
-- cell Xor/Xor(Add(a,Neg(b)),c): green
-- cell Xor/Xor(Sub(a,Neg(b)),c): green
-- cell Xor/Xor(Mul(a,Neg(b)),c): error
-- cell Xor/Xor(Div(a,Neg(b)),c): error
-- cell Xor/Xor(Mod(a,Neg(b)),c): green
-- cell Xor/Xor(And(a,Neg(b)),c): error
-- cell Xor/Xor(Or(a,Neg(b)),c): error
-- cell Xor/Xor(Xor(a,Neg(b)),c): error
-- cell Xor/Xor(a,Not(b)): error
-- cell Xor/Xor(Not(b),c): skipped
-- cell Xor/Xor(Add(a,Not(b)),c): green
-- cell Xor/Xor(Sub(a,Not(b)),c): green
-- cell Xor/Xor(Mul(a,Not(b)),c): error
-- cell Xor/Xor(Div(a,Not(b)),c): skipped
-- cell Xor/Xor(Mod(a,Not(b)),c): green
-- cell Xor/Xor(And(a,Not(b)),c): green
-- cell Xor/Xor(Or(a,Not(b)),c): error
-- cell Xor/Xor(Xor(a,Not(b)),c): skipped
-- cell Xor/Xor(a,NegLit(b)): error
-- cell Xor/Xor(NegLit(b),c): error
-- cell Xor/Xor(Add(a,NegLit(b)),c): green
-- cell Xor/Xor(Sub(a,NegLit(b)),c): green
-- cell Xor/Xor(Mul(a,NegLit(b)),c): error
-- cell Xor/Xor(Div(a,NegLit(b)),c): skipped
-- cell Xor/Xor(Mod(a,NegLit(b)),c): green
-- cell Xor/Xor(And(a,NegLit(b)),c): error
-- cell Xor/Xor(Or(a,NegLit(b)),c): error
-- cell Xor/Xor(Xor(a,NegLit(b)),c): error
-- cell Xor/Xor(a,NegParam(b)): error
-- cell Xor/Xor(NegParam(b),c): error
-- cell Xor/Xor(Add(a,NegParam(b)),c): green
-- cell Xor/Xor(Sub(a,NegParam(b)),c): green
-- cell Xor/Xor(Mul(a,NegParam(b)),c): error
-- cell Xor/Xor(Div(a,NegParam(b)),c): skipped
-- cell Xor/Xor(Mod(a,NegParam(b)),c): green
-- cell Xor/Xor(And(a,NegParam(b)),c): error
-- cell Xor/Xor(Or(a,NegParam(b)),c): error
-- cell Xor/Xor(Xor(a,NegParam(b)),c): error
