-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id,
	roundBankers(r.F, r.P)
FROM
	ResidueValues r
ORDER BY
	r.Id

