-- ClickHouse.MySql ClickHouse
SELECT
	toDecimal128(r.A, 10) * toDecimal128('-5.5', 10)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.A,
	t1.B,
	t1.C,
	t1.N,
	t1.S
FROM
	PrecedenceRow t1

-- ClickHouse.MySql ClickHouse
SELECT
	negate(toDecimal128('-5.5', 10)) * r.B
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.A,
	t1.B,
	t1.C,
	t1.N,
	t1.S
FROM
	PrecedenceRow t1

-- ClickHouse.MySql ClickHouse
SELECT
	toFloat64(r.A) * toFloat64(-5.5)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.A,
	t1.B,
	t1.C,
	t1.N,
	t1.S
FROM
	PrecedenceRow t1

-- ClickHouse.MySql ClickHouse
SELECT
	toFloat64(r.A) * toFloat64(9.9999999999999995E-08)
FROM
	PrecedenceRow r
ORDER BY
	r.Id

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.A,
	t1.B,
	t1.C,
	t1.N,
	t1.S
FROM
	PrecedenceRow t1

