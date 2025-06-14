BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	toDecimal128(toFloat64(toDecimal128(v.Integer, 10)) / toFloat64(toDecimal128('33', 10)), 10),
	toDecimal128(toFloat64(v.Decimal) / toFloat64(toDecimal128('33', 5)), 5),
	v.Double / toFloat64(toDecimal128('33', 10))
FROM
	Issue4469Table v
LIMIT 2

