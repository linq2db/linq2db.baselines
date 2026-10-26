-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id,
	roundBankers(r.D),
	roundBankers(r.D),
	ROUND(r.D)
FROM
	HeadroomValues r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.D
FROM
	HeadroomValues t1

