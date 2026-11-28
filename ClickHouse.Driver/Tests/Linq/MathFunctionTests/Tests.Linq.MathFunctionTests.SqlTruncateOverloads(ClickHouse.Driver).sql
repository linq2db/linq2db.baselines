-- ClickHouse.Driver ClickHouse
SELECT
	r.Id,
	Truncate(r.D),
	Truncate(r.F),
	Truncate(r.N),
	Truncate(r.G),
	Truncate(r.D),
	Truncate(r.F)
FROM
	TruncateValues r
ORDER BY
	r.Id

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.D,
	t1.F,
	t1.N,
	t1.G
FROM
	TruncateValues t1

