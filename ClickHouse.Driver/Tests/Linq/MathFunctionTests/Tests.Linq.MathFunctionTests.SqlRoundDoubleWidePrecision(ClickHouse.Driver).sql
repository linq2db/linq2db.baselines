-- ClickHouse.Driver ClickHouse
SELECT
	sign(r.F) * (CASE
		WHEN abs(r.F) * power(toFloat64(10), r.P) - floor(abs(r.F) * power(toFloat64(10), r.P)) = toFloat64(0.5)
			THEN floor(abs(r.F) * power(toFloat64(10), r.P)) + toFloat64(1)
		ELSE round(abs(r.F) * power(toFloat64(10), r.P), 0)
	END / power(toFloat64(10), r.P))
FROM
	ResidueValues r
ORDER BY
	r.Id

