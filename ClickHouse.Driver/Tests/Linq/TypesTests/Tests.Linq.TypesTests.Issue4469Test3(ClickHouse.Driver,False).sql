-- ClickHouse.Driver ClickHouse

SELECT
	toFloat64(v.Integer) / 33,
	toFloat64(v.Decimal) / toFloat64(toDecimal128('33', 5)),
	v.Double / toFloat64(33)
FROM
	Issue4469Table v
LIMIT 2

