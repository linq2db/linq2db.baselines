BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	v.Integer / 33,
	toDecimal128(toFloat64(v.Decimal) / 33, 5),
	v.Double / 33
FROM
	Issue4469Table v
LIMIT 2

