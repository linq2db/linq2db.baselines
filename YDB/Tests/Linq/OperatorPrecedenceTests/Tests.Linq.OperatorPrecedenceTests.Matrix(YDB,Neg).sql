-- YDB Ydb
SELECT
	-(r.A + r.B) as c1,
	-(r.A + r.B) as c2,
	-(r.A - r.B) as c3,
	-(r.A - r.B) as c4,
	-(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32))) as c5,
	-(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32))) as c6,
	-(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32))) as c7,
	-(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32))) as c8,
	-(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32))) as c9,
	-(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32))) as c10,
	r.B as B,
	-(~Unwrap(CAST(r.B AS Uint32))) as c11,
	--5 as c12,
	-(-5 * r.B) as c13
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	-(r.A + r.B) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	-(r.A + r.B) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	-(r.A - r.B) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	-(r.A - r.B) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	-(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32))) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	-(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32))) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	-(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32))) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	-(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32))) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	-(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32))) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	-(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32))) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	r.B as B
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	-(~Unwrap(CAST(r.B AS Uint32))) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	--5 as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	-(-5 * r.B) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	--5 as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	--5 as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- cell Neg/Neg(Add(a,b)): green
-- cell Neg/Neg(AsNotNull(Add(a,b))): green
-- cell Neg/Neg(Sub(a,b)): green
-- cell Neg/Neg(AsNotNull(Sub(a,b))): green
-- cell Neg/Neg(Mul(a,b)): skipped
-- cell Neg/Neg(AsNotNull(Mul(a,b))): skipped
-- cell Neg/Neg(Div(a,b)): skipped
-- cell Neg/Neg(AsNotNull(Div(a,b))): skipped
-- cell Neg/Neg(Mod(a,b)): skipped
-- cell Neg/Neg(AsNotNull(Mod(a,b))): skipped
-- cell Neg/Neg(And(a,b)): error
-- cell Neg/Neg(AsNotNull(And(a,b))): error
-- cell Neg/Neg(Or(a,b)): error
-- cell Neg/Neg(AsNotNull(Or(a,b))): error
-- cell Neg/Neg(Xor(a,b)): error
-- cell Neg/Neg(AsNotNull(Xor(a,b))): error
-- cell Neg/Neg(Neg(b)): green
-- cell Neg/Neg(Not(b)): green
-- cell Neg/Neg(NegLit(b)): error
-- cell Neg/Neg(NegParam(b)): error
-- cell Neg/Neg(Mul(NegLit,b)): green
