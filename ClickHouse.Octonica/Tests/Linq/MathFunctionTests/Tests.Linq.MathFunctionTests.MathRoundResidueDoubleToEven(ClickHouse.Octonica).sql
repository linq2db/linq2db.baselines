-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id,
	roundBankers(r.F, r.P)
FROM
	ResidueValues r
ORDER BY
	r.Id

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.F,
	t1.P
FROM
	ResidueValues t1

