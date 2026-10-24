-- ClickHouse.Octonica ClickHouse
SELECT
	ROUND(toDecimal128('1234567.125', 3), 1) + r.D32,
	roundBankers(toDecimal128('1234567.125', 3), 2) + r.D32,
	ROUND(toDecimal128('1.0000000005', 10), 9) + r.D32,
	ROUND(toDecimal128('1.125', 3), 1) + r.D32,
	ROUND(toDecimal128('1234567890123456.125', 3), 1) + r.D64,
	ROUND(toDecimal128('1.125', 3), 1) + r.D64
FROM
	RoundValueNarrowFamily r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.D32,
	t1.D64
FROM
	RoundValueNarrowFamily t1

-- ClickHouse.Octonica ClickHouse
SELECT
	ROUND(toDecimal128('123456789.5', 2)) + r.D32,
	ROUND(toDecimal128('12345678.5', 2)) + r.D32,
	ROUND(toDecimal128('12345678901234567.5', 2)) + r.D64
FROM
	RoundValueNarrowFamily r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.D32,
	t1.D64
FROM
	RoundValueNarrowFamily t1

