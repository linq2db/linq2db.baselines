-- YDB Ydb
SELECT
	~Unwrap(CAST(r.A + r.B AS Uint32)) as c1,
	~Unwrap(CAST(r.A + r.B AS Uint32)) as c2,
	~Unwrap(CAST(r.A - r.B AS Uint32)) as c3,
	~Unwrap(CAST(r.A - r.B AS Uint32)) as c4,
	~Unwrap(CAST(r.A * r.B AS Uint32)) as c5,
	~Unwrap(CAST(r.A * r.B AS Uint32)) as c6,
	~Unwrap(CAST(r.A / r.B AS Uint32)) as c7,
	~Unwrap(CAST(r.A / r.B AS Uint32)) as c8,
	~Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32)) AS Uint32)) as c9,
	~Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32)) AS Uint32)) as c10,
	~Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32)) AS Uint32)) as c11,
	~Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32)) AS Uint32)) as c12,
	~Unwrap(CAST(-r.B AS Uint32)) as c13,
	~Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) as c14,
	~Unwrap(CAST(-5 AS Uint32)) as c15,
	~Unwrap(CAST((-5) * r.B AS Uint32)) as c16
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	~Unwrap(CAST(r.A + r.B AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	~Unwrap(CAST(r.A + r.B AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	~Unwrap(CAST(r.A - r.B AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	~Unwrap(CAST(r.A - r.B AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	~Unwrap(CAST(r.A * r.B AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	~Unwrap(CAST(r.A * r.B AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	~Unwrap(CAST(r.A / r.B AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	~Unwrap(CAST(r.A / r.B AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	~Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32)) AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	~Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32)) AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	~Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32)) AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	~Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32)) AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	~Unwrap(CAST(-r.B AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	~Unwrap(CAST(~Unwrap(CAST(r.B AS Uint32)) AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	~Unwrap(CAST(-5 AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	~Unwrap(CAST((-5) * r.B AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	~Unwrap(CAST(-5 AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	~Unwrap(CAST(-5 AS Uint32)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- cell Not/Not(Add(a,b)): error
-- cell Not/Not(AsNotNull(Add(a,b))): error
-- cell Not/Not(Sub(a,b)): error
-- cell Not/Not(AsNotNull(Sub(a,b))): error
-- cell Not/Not(Mul(a,b)): error
-- cell Not/Not(AsNotNull(Mul(a,b))): error
-- cell Not/Not(Div(a,b)): error
-- cell Not/Not(AsNotNull(Div(a,b))): error
-- cell Not/Not(Mod(a,b)): skipped
-- cell Not/Not(AsNotNull(Mod(a,b))): skipped
-- cell Not/Not(And(a,b)): error
-- cell Not/Not(AsNotNull(And(a,b))): error
-- cell Not/Not(Or(a,b)): error
-- cell Not/Not(AsNotNull(Or(a,b))): error
-- cell Not/Not(Xor(a,b)): skipped
-- cell Not/Not(AsNotNull(Xor(a,b))): skipped
-- cell Not/Not(Neg(b)): error
-- cell Not/Not(Not(b)): green
-- cell Not/Not(NegLit(b)): error
-- cell Not/Not(NegParam(b)): error
-- cell Not/Not(Mul(NegLit,b)): error
