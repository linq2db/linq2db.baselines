-- ClickHouse.Octonica ClickHouse
SELECT
	toDecimal128(Power(toFloat64(r.D), toFloat64(toDecimal128('0.00005', 10))), 4) + r.D
FROM
	PowScale r
LIMIT 2

