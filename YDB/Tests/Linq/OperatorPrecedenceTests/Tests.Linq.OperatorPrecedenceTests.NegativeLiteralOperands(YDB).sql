-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Decimal(22,9))) * Decimal('-5.5', 22, 9) as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.A as A,
	t1.B as B,
	t1.C as C_1,
	t1.N as N,
	t1.S as S
FROM
	PrecedenceRow t1

-- YDB Ydb
SELECT
	-Decimal('-5.5', 22, 9) * r.B as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.A as A,
	t1.B as B,
	t1.C as C_1,
	t1.N as N,
	t1.S as S
FROM
	PrecedenceRow t1

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Double)) * Double('-5.5') as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.A as A,
	t1.B as B,
	t1.C as C_1,
	t1.N as N,
	t1.S as S
FROM
	PrecedenceRow t1

-- YDB Ydb
SELECT
	Unwrap(CAST(r.A AS Double)) * Double('9.9999999999999995E-08') as c1
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.A as A,
	t1.B as B,
	t1.C as C_1,
	t1.N as N,
	t1.S as S
FROM
	PrecedenceRow t1

