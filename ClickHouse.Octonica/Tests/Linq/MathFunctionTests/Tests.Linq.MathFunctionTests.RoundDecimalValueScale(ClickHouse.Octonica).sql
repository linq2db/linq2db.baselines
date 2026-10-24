-- ClickHouse.Octonica ClickHouse
SELECT
	ROUND(toDecimal128('1.00005', 5), 4) + r.D,
	roundBankers(toDecimal128('1.00051', 5), 3) + r.D
FROM
	RoundValueScale r
LIMIT 2

