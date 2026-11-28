-- ClickHouse.MySql ClickHouse
SELECT
	r.Id,
	toInt32(roundBankers(r.D)),
	toInt32(roundBankers(r.F))
FROM
	MidpointValues r
ORDER BY
	r.Id

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.D,
	t1.F
FROM
	MidpointValues t1

