-- ClickHouse.MySql ClickHouse
SELECT
	r.Id,
	sign(r.F) * CASE
		WHEN abs(r.F) - floor(abs(r.F)) = toFloat64(0.5) THEN floor(abs(r.F)) + toFloat64(1)
		ELSE round(abs(r.F), 0)
	END,
	sign(r.F) * (CASE
		WHEN abs(r.F) * power(toFloat64(10), r.P) - floor(abs(r.F) * power(toFloat64(10), r.P)) = toFloat64(0.5)
			THEN floor(abs(r.F) * power(toFloat64(10), r.P)) + toFloat64(1)
		ELSE round(abs(r.F) * power(toFloat64(10), r.P), 0)
	END / power(toFloat64(10), r.P)),
	roundBankers(r.F),
	roundBankers(r.F, r.P)
FROM
	RoundValues r
ORDER BY
	r.Id

-- ClickHouse.MySql ClickHouse
SELECT
	t1.Id,
	t1.D,
	t1.F,
	t1.P
FROM
	RoundValues t1

