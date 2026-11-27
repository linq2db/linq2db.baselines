-- ClickHouse.MySql ClickHouse
SELECT
	v.Integer / 33,
	toDecimal128(toFloat64(v.Decimal) / 33, 5),
	v.Double / 33
FROM
	NumericDivisionTable v
LIMIT 2

