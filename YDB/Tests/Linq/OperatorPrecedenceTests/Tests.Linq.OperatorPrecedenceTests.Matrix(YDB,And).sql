-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1,
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B + r.C AS Uint32)) as c2,
	Unwrap(CAST(r.A + r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c3,
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B + r.C AS Uint32)) as c4,
	Unwrap(CAST(r.A - r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c5,
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B - r.C AS Uint32)) as c6,
	Unwrap(CAST(r.A - r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c7,
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B - r.C AS Uint32)) as c8,
	Unwrap(CAST(r.A * r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c9,
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B * r.C AS Uint32)) as c10,
	Unwrap(CAST(r.A * r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c11,
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B * r.C AS Uint32)) as c12,
	Unwrap(CAST(r.A / r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c13,
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B / r.C AS Uint32)) as c14,
	Unwrap(CAST(r.A / r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c15,
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B / r.C AS Uint32)) as c16,
	Unwrap(CAST(r.A % r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c17,
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B % r.C AS Uint32)) as c18,
	Unwrap(CAST(r.A % r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c19,
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B % r.C AS Uint32)) as c20,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c21,
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c22,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c23,
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c24,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c25,
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c26,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c27,
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c28,
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-r.B AS Uint32)) as c29,
	Unwrap(CAST(-r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c30,
	Unwrap(CAST(r.A - r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c31,
	Unwrap(CAST(r.A + r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c32,
	Unwrap(CAST(r.A * -r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c33,
	Unwrap(CAST(r.A / -r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c34,
	Unwrap(CAST(r.A % -r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c35,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-r.B AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c36,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-r.B AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c37,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-r.B AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c38,
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) as c39,
	Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c40,
	Unwrap(CAST(r.A + (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c41,
	Unwrap(CAST(r.A - (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c42,
	Unwrap(CAST(r.A * (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c43,
	Unwrap(CAST(r.A % (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c44,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c45,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c46,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c47,
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32)) as c48,
	Unwrap(CAST(-5 AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c49,
	Unwrap(CAST(r.A + -5 AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c50,
	Unwrap(CAST(r.A - -5 AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c51,
	Unwrap(CAST(r.A * -5 AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c52,
	Unwrap(CAST(r.A % -5 AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c53,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c54,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c55,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c56
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B + r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B + r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A - r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B - r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A - r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B - r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A * r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B * r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A * r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B * r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A / r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B / r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A / r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B / r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A % r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B % r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A % r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B % r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(Unwrap(CAST(r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)) AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-r.B AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(-r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A - r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A * -r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A / -r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A % -r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-r.B AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-r.B AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-r.B AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A - (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A * (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A % (~Unwrap(CAST(r.B AS Uint32))) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(-5 AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + -5 AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A - -5 AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A * -5 AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A % -5 AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32)) as c1,
	Unwrap(CAST(-5 AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c2,
	Unwrap(CAST(r.A + -5 AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c3,
	Unwrap(CAST(r.A - -5 AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c4,
	Unwrap(CAST(r.A * -5 AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c5,
	Unwrap(CAST(r.A % -5 AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c6,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c7,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c8,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c9
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(-5 AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + -5 AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A - -5 AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A * -5 AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A % -5 AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(-5 AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(-5 AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(-5 AS Uint32)) AS Uint32)) & Unwrap(CAST(r.C AS Uint32)) as c1
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
-- cell And/And(a,Neg(b)): error
-- cell And/And(Neg(b),c): error
-- cell And/And(Add(a,Neg(b)),c): green
-- cell And/And(Sub(a,Neg(b)),c): green
-- cell And/And(Mul(a,Neg(b)),c): error
-- cell And/And(Div(a,Neg(b)),c): error
-- cell And/And(Mod(a,Neg(b)),c): green
-- cell And/And(And(a,Neg(b)),c): error
-- cell And/And(Or(a,Neg(b)),c): error
-- cell And/And(Xor(a,Neg(b)),c): error
-- cell And/And(a,Not(b)): green
-- cell And/And(Not(b),c): green
-- cell And/And(Add(a,Not(b)),c): green
-- cell And/And(Sub(a,Not(b)),c): green
-- cell And/And(Mul(a,Not(b)),c): error
-- cell And/And(Div(a,Not(b)),c): skipped
-- cell And/And(Mod(a,Not(b)),c): green
-- cell And/And(And(a,Not(b)),c): green
-- cell And/And(Or(a,Not(b)),c): green
-- cell And/And(Xor(a,Not(b)),c): green
-- cell And/And(a,NegLit(b)): error
-- cell And/And(NegLit(b),c): error
-- cell And/And(Add(a,NegLit(b)),c): green
-- cell And/And(Sub(a,NegLit(b)),c): green
-- cell And/And(Mul(a,NegLit(b)),c): error
-- cell And/And(Div(a,NegLit(b)),c): skipped
-- cell And/And(Mod(a,NegLit(b)),c): green
-- cell And/And(And(a,NegLit(b)),c): error
-- cell And/And(Or(a,NegLit(b)),c): error
-- cell And/And(Xor(a,NegLit(b)),c): error
-- cell And/And(a,NegParam(b)): error
-- cell And/And(NegParam(b),c): error
-- cell And/And(Add(a,NegParam(b)),c): green
-- cell And/And(Sub(a,NegParam(b)),c): green
-- cell And/And(Mul(a,NegParam(b)),c): error
-- cell And/And(Div(a,NegParam(b)),c): skipped
-- cell And/And(Mod(a,NegParam(b)),c): green
-- cell And/And(And(a,NegParam(b)),c): error
-- cell And/And(Or(a,NegParam(b)),c): error
-- cell And/And(Xor(a,NegParam(b)),c): error
