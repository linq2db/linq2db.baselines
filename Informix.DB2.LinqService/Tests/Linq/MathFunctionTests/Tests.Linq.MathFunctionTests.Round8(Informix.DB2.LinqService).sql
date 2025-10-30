BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t.c1
FROM
	(
		SELECT
			CASE
				WHEN p.MoneyValue::Float - FLOOR(p.MoneyValue::Float) = 0.5 AND Mod(FLOOR(p.MoneyValue::Float), 2) = 0
					THEN FLOOR(p.MoneyValue::Float)
				ELSE ROUND(p.MoneyValue::Float, 0)
			END as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> 0

