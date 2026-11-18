-- ClickHouse.Octonica ClickHouse
SELECT
	Power(toDecimal128('1.00005', 5), r.E) + r.D,
	Power(toDecimal128('0.00005', 5), r.E) + r.D,
	ROUND(toDecimal128('1.00005', 5), r.P) + r.D,
	roundBankers(toDecimal128('1.00051', 5), r.P3) + r.D,
	ROUND(toDecimal128('0.00005', 5), r.P) + r.D
FROM
	RoundValueScale r
LIMIT 2

