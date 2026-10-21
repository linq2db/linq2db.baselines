-- ClickHouse.MySql ClickHouse
SELECT
	Abs(r.Value) as c1
FROM
	WideDecimalRow r
UNION ALL
SELECT
	toDecimal128(toDecimal128('1.0000000000005', 13), 13) as c1
FROM
	WideDecimalRow r_1

-- ClickHouse.MySql ClickHouse
SELECT
	toDecimal128(toDecimal128('1.0000000000005', 13), 13) as c1
FROM
	WideDecimalRow r
UNION ALL
SELECT
	Abs(r_1.Value) as c1
FROM
	WideDecimalRow r_1

-- ClickHouse.MySql ClickHouse
SELECT
	Abs(r.Value) as c1
FROM
	WideDecimalRow r
UNION ALL
SELECT
	toDecimal128(toDecimal128('1.00000000000000005', 17), 17) as c1
FROM
	WideDecimalRow r_1

-- ClickHouse.MySql ClickHouse
SELECT
	toDecimal128(toDecimal128('1.00000000000000005', 17), 17) as c1
FROM
	WideDecimalRow r
UNION ALL
SELECT
	Abs(r_1.Value) as c1
FROM
	WideDecimalRow r_1

