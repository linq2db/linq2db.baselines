-- ClickHouse.Driver ClickHouse
SELECT
	r.Id,
	ROUND(r.D),
	ROUND(r.D, r.P),
	roundBankers(r.D),
	roundBankers(r.D, r.P)
FROM
	RoundValues r
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.D,
	t1.F,
	t1.P
FROM
	RoundValues t1

