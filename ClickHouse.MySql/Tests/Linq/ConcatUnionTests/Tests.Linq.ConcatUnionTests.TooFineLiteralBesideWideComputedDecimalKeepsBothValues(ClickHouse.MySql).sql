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

