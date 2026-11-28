-- ClickHouse.MySql ClickHouse
SELECT
	r.Id,
	roundBankers(r.D),
	roundBankers(r.D),
	ROUND(r.D),
	roundBankers(r.F),
	roundBankers(r.F),
	sign(r.F) * CASE
		WHEN abs(r.F) - floor(abs(r.F)) = toFloat64(0.5) THEN floor(abs(r.F)) + toFloat64(1)
		ELSE round(abs(r.F), 0)
	END
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

