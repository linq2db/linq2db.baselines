-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1,
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B + r.C AS Uint32)) as c2,
	Unwrap(CAST(r.A + r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c3,
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B + r.C AS Uint32)) as c4,
	Unwrap(CAST(r.A - r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c5,
	Unwrap(CAST(r.A - r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c6,
	Unwrap(CAST(r.A * r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c7,
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B * r.C AS Uint32)) as c8,
	Unwrap(CAST(r.A * r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c9,
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B * r.C AS Uint32)) as c10,
	Unwrap(CAST(r.A / r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c11,
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B / r.C AS Uint32)) as c12,
	Unwrap(CAST(r.A / r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c13,
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B / r.C AS Uint32)) as c14,
	Unwrap(CAST(r.A % r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c15,
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B % r.C AS Uint32)) as c16,
	Unwrap(CAST(r.A % r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c17,
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B % r.C AS Uint32)) as c18,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c19,
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c20,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c21,
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c22,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c23,
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c24,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c25,
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c26,
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-r.B AS Uint32)) as c27,
	Unwrap(CAST(-r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c28,
	Unwrap(CAST(r.A - r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c29,
	Unwrap(CAST(r.A + r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c30,
	Unwrap(CAST(r.A * -r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c31,
	Unwrap(CAST(r.A / -r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c32,
	Unwrap(CAST(r.A % -r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c33,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-r.B AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c34,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-r.B AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c35,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-r.B AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c36,
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) as c37,
	Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c38,
	Unwrap(CAST(r.A + (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c39,
	Unwrap(CAST(r.A - (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c40,
	Unwrap(CAST(r.A * (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c41,
	Unwrap(CAST(r.A % (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c42,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c43,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c44,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c45,
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32)) as c46,
	Unwrap(CAST(-5 AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c47,
	Unwrap(CAST(r.A + -5 AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c48,
	Unwrap(CAST(r.A - -5 AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c49,
	Unwrap(CAST(r.A * -5 AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c50,
	Unwrap(CAST(r.A % -5 AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c51,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c52,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c53,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c54
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B + r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B + r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A - r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A - r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A * r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B * r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A * r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B * r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A / r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B / r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A / r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B / r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A % r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B % r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A % r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B % r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-r.B AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(-r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A - r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A * -r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A / -r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A % -r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-r.B AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-r.B AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-r.B AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A - (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A * (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A % (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(-5 AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + -5 AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A - -5 AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A * -5 AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A % -5 AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32)) as c1,
	Unwrap(CAST(-5 AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c2,
	Unwrap(CAST(r.A + -5 AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c3,
	Unwrap(CAST(r.A - -5 AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c4,
	Unwrap(CAST(r.A * -5 AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c5,
	Unwrap(CAST(r.A % -5 AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c6,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c7,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c8,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c9
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(-5 AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + -5 AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A - -5 AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A * -5 AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A % -5 AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32)) AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) as c1
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
-- cell Or/Or(a,Neg(b)): error
-- cell Or/Or(Neg(b),c): error
-- cell Or/Or(Add(a,Neg(b)),c): green
-- cell Or/Or(Sub(a,Neg(b)),c): green
-- cell Or/Or(Mul(a,Neg(b)),c): error
-- cell Or/Or(Div(a,Neg(b)),c): error
-- cell Or/Or(Mod(a,Neg(b)),c): green
-- cell Or/Or(And(a,Neg(b)),c): error
-- cell Or/Or(Or(a,Neg(b)),c): error
-- cell Or/Or(Xor(a,Neg(b)),c): error
-- cell Or/Or(a,Not(b)): error
-- cell Or/Or(Not(b),c): error
-- cell Or/Or(Add(a,Not(b)),c): green
-- cell Or/Or(Sub(a,Not(b)),c): green
-- cell Or/Or(Mul(a,Not(b)),c): error
-- cell Or/Or(Div(a,Not(b)),c): skipped
-- cell Or/Or(Mod(a,Not(b)),c): green
-- cell Or/Or(And(a,Not(b)),c): green
-- cell Or/Or(Or(a,Not(b)),c): error
-- cell Or/Or(Xor(a,Not(b)),c): error
-- cell Or/Or(a,NegLit(b)): error
-- cell Or/Or(NegLit(b),c): error
-- cell Or/Or(Add(a,NegLit(b)),c): green
-- cell Or/Or(Sub(a,NegLit(b)),c): green
-- cell Or/Or(Mul(a,NegLit(b)),c): error
-- cell Or/Or(Div(a,NegLit(b)),c): skipped
-- cell Or/Or(Mod(a,NegLit(b)),c): green
-- cell Or/Or(And(a,NegLit(b)),c): error
-- cell Or/Or(Or(a,NegLit(b)),c): error
-- cell Or/Or(Xor(a,NegLit(b)),c): error
-- cell Or/Or(a,NegParam(b)): error
-- cell Or/Or(NegParam(b),c): error
-- cell Or/Or(Add(a,NegParam(b)),c): green
-- cell Or/Or(Sub(a,NegParam(b)),c): green
-- cell Or/Or(Mul(a,NegParam(b)),c): error
-- cell Or/Or(Div(a,NegParam(b)),c): skipped
-- cell Or/Or(Mod(a,NegParam(b)),c): green
-- cell Or/Or(And(a,NegParam(b)),c): error
-- cell Or/Or(Or(a,NegParam(b)),c): error
-- cell Or/Or(Xor(a,NegParam(b)),c): error
