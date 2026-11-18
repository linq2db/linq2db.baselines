-- ClickHouse.Octonica ClickHouse
SELECT
	Power(toDecimal128('1.00005', 5), r.E) + r.D
FROM
	PowBaseScale r
LIMIT 2

