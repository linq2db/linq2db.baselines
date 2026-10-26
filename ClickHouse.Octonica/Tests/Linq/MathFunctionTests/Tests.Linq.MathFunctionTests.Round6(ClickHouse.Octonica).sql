-- ClickHouse.Octonica ClickHouse
SELECT
	t.c1
FROM
	(
		SELECT
			sign(toFloat64(p.MoneyValue)) * CASE
				WHEN abs(toFloat64(p.MoneyValue)) - floor(abs(toFloat64(p.MoneyValue))) = toFloat64(0.5)
					THEN floor(abs(toFloat64(p.MoneyValue))) + toFloat64(1)
				ELSE round(abs(toFloat64(p.MoneyValue)), 0)
			END as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> toFloat64(0)

