-- ClickHouse.Driver ClickHouse
SELECT
	Abs(r.Value) as c1
FROM
	FineDecimalRow r
UNION ALL
SELECT
	toDecimal64(toDecimal64('1.000000000005', 12), 12) as c1
FROM
	FineDecimalRow r_1

