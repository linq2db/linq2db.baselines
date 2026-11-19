-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || Unwrap(CAST(r.A + r.B AS Text)) as c1,
	Unwrap(CAST(r.A + r.B AS Text)) || Coalesce(r.S, ''u) as c2,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), r.B + r.C, r.C)), ','u) as c3,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(r.A + r.B AS Text)) as c4,
	Coalesce(r.S, ''u) || Unwrap(CAST(r.A - r.B AS Text)) as c5,
	Unwrap(CAST(r.A - r.B AS Text)) || Coalesce(r.S, ''u) as c6,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), r.B - r.C, r.C)), ','u) as c7,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(r.A - r.B AS Text)) as c8,
	Coalesce(r.S, ''u) || Unwrap(CAST(r.A * r.B AS Text)) as c9,
	Unwrap(CAST(r.A * r.B AS Text)) || Coalesce(r.S, ''u) as c10,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), r.B * r.C, r.C)), ','u) as c11,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(r.A * r.B AS Text)) as c12,
	Coalesce(r.S, ''u) || Unwrap(CAST(r.A / r.B AS Text)) as c13,
	Unwrap(CAST(r.A / r.B AS Text)) || Coalesce(r.S, ''u) as c14,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), r.B / r.C, r.C)), ','u) as c15,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(r.A / r.B AS Text)) as c16,
	Coalesce(r.S, ''u) || Unwrap(CAST(r.A % r.B AS Text)) as c17,
	Unwrap(CAST(r.A % r.B AS Text)) || Coalesce(r.S, ''u) as c18,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), r.B % r.C, r.C)), ','u) as c19,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(r.A % r.B AS Text)) as c20,
	Coalesce(r.S, ''u) || Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32)) AS Text)) as c21,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32)) AS Text)) || Coalesce(r.S, ''u) as c22,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)), r.C)), ','u) as c23,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32)) AS Text)) as c24,
	Coalesce(r.S, ''u) || Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32)) AS Text)) as c25,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32)) AS Text)) || Coalesce(r.S, ''u) as c26,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)), r.C)), ','u) as c27,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32)) AS Text)) as c28,
	Coalesce(r.S, ''u) || Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32)) AS Text)) as c29,
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32)) AS Text)) || Coalesce(r.S, ''u) as c30,
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)), r.C)), ','u) as c31,
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32)) AS Text)) as c32,
	Coalesce(r.S, ''u) || Unwrap(CAST(-r.A AS Text)) as c33,
	Unwrap(CAST(-r.A AS Text)) || Coalesce(r.S, ''u) as c34,
	Coalesce(r.S, ''u) || Unwrap(CAST(~Unwrap(CAST(r.A AS Uint32)) AS Text)) as c35,
	Unwrap(CAST(~Unwrap(CAST(r.A AS Uint32)) AS Text)) || Coalesce(r.S, ''u) as c36,
	Coalesce(r.S, ''u) || '-5'u as c37,
	'-5'u || Coalesce(r.S, ''u) as c38
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || Unwrap(CAST(r.A + r.B AS Text)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A + r.B AS Text)) || Coalesce(r.S, ''u) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), r.B + r.C, r.C)), ','u) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(r.A + r.B AS Text)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || Unwrap(CAST(r.A - r.B AS Text)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A - r.B AS Text)) || Coalesce(r.S, ''u) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), r.B - r.C, r.C)), ','u) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(r.A - r.B AS Text)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || Unwrap(CAST(r.A * r.B AS Text)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A * r.B AS Text)) || Coalesce(r.S, ''u) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), r.B * r.C, r.C)), ','u) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(r.A * r.B AS Text)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || Unwrap(CAST(r.A / r.B AS Text)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A / r.B AS Text)) || Coalesce(r.S, ''u) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), r.B / r.C, r.C)), ','u) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(r.A / r.B AS Text)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || Unwrap(CAST(r.A % r.B AS Text)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A % r.B AS Text)) || Coalesce(r.S, ''u) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), r.B % r.C, r.C)), ','u) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(r.A % r.B AS Text)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32)) AS Text)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32)) AS Text)) || Coalesce(r.S, ''u) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(r.B AS Uint32)) & Unwrap(CAST(r.C AS Uint32)), r.C)), ','u) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) & Unwrap(CAST(r.B AS Uint32)) AS Text)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32)) AS Text)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32)) AS Text)) || Coalesce(r.S, ''u) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(r.B AS Uint32)) | Unwrap(CAST(r.C AS Uint32)), r.C)), ','u) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) | Unwrap(CAST(r.B AS Uint32)) AS Text)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32)) AS Text)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32)) AS Text)) || Coalesce(r.S, ''u) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	ListConcat(ListNotNull(AsList(Coalesce(r.S, ''u), Unwrap(CAST(r.B AS Uint32)) ^ Unwrap(CAST(r.C AS Uint32)), r.C)), ','u) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || Coalesce(r.S, ''u) || Unwrap(CAST(Unwrap(CAST(r.A AS Uint32)) ^ Unwrap(CAST(r.B AS Uint32)) AS Text)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || Unwrap(CAST(-r.A AS Text)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(-r.A AS Text)) || Coalesce(r.S, ''u) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || Unwrap(CAST(~Unwrap(CAST(r.A AS Uint32)) AS Text)) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Unwrap(CAST(~Unwrap(CAST(r.A AS Uint32)) AS Text)) || Coalesce(r.S, ''u) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || '-5'u as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	'-5'u || Coalesce(r.S, ''u) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	Coalesce(r.S, ''u) || '-5'u as c1,
	'-5'u || Coalesce(r.S, ''u) as c2
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- cell Concat/Concat(s,Add(a,b)): green
-- cell Concat/Concat(Add(a,b),s): green
-- cell Concat/Join(s,Add(b,c),c): error
-- cell Concat/Concat(s,Concat(s,Add(a,b))): green
-- cell Concat/Concat(s,Sub(a,b)): green
-- cell Concat/Concat(Sub(a,b),s): green
-- cell Concat/Join(s,Sub(b,c),c): error
-- cell Concat/Concat(s,Concat(s,Sub(a,b))): green
-- cell Concat/Concat(s,Mul(a,b)): green
-- cell Concat/Concat(Mul(a,b),s): green
-- cell Concat/Join(s,Mul(b,c),c): error
-- cell Concat/Concat(s,Concat(s,Mul(a,b))): green
-- cell Concat/Concat(s,Div(a,b)): green
-- cell Concat/Concat(Div(a,b),s): green
-- cell Concat/Join(s,Div(b,c),c): error
-- cell Concat/Concat(s,Concat(s,Div(a,b))): green
-- cell Concat/Concat(s,Mod(a,b)): green
-- cell Concat/Concat(Mod(a,b),s): green
-- cell Concat/Join(s,Mod(b,c),c): error
-- cell Concat/Concat(s,Concat(s,Mod(a,b))): green
-- cell Concat/Concat(s,And(a,b)): green
-- cell Concat/Concat(And(a,b),s): green
-- cell Concat/Join(s,And(b,c),c): error
-- cell Concat/Concat(s,Concat(s,And(a,b))): green
-- cell Concat/Concat(s,Or(a,b)): green
-- cell Concat/Concat(Or(a,b),s): green
-- cell Concat/Join(s,Or(b,c),c): error
-- cell Concat/Concat(s,Concat(s,Or(a,b))): green
-- cell Concat/Concat(s,Xor(a,b)): green
-- cell Concat/Concat(Xor(a,b),s): green
-- cell Concat/Join(s,Xor(b,c),c): error
-- cell Concat/Concat(s,Concat(s,Xor(a,b))): green
-- cell Concat/Concat(s,Neg(a)): green
-- cell Concat/Concat(Neg(a),s): green
-- cell Concat/Concat(s,Not(a)): red
-- cell Concat/Concat(Not(a),s): red
-- cell Concat/Concat(s,NegLit(a)): green
-- cell Concat/Concat(NegLit(a),s): green
-- cell Concat/Concat(s,NegParam(a)): green
-- cell Concat/Concat(NegParam(a),s): green
