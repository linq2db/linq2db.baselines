-- Informix.DB2 Informix

SELECT
	t.c1
FROM
	(
		SELECT
			CASE
				WHEN p.MoneyValue::Float * 2 = ROUND(p.MoneyValue::Float * 2, 1) AND p.MoneyValue::Float <> ROUND(p.MoneyValue::Float, 1)
					THEN ROUND(p.MoneyValue::Float / 2, 1) * 2
				ELSE ROUND(p.MoneyValue::Float, 1)
			END as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> 0

