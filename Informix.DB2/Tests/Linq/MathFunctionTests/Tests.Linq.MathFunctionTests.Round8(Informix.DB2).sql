-- Informix.DB2 Informix
SELECT
	t.c1
FROM
	(
		SELECT
			CASE
				WHEN p.MoneyValue::Float - FLOOR(p.MoneyValue::Float) = 0.5
					THEN ROUND(p.MoneyValue::Float * 0.5, 0) * 2
				ELSE ROUND(p.MoneyValue::Float, 0)
			END as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> 0

