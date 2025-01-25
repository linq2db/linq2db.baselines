BeforeExecute
-- Informix.DB2 Informix

SELECT
	t_1.c1
FROM
	(
		SELECT
			CASE
				WHEN t.MoneyValue::Float - Floor(t.MoneyValue::Float) = 0.5 AND Mod(Floor(t.MoneyValue::Float), 2) = 0
					THEN Floor(t.MoneyValue::Float)
				ELSE Round(t.MoneyValue::Float, 0)
			END as c1
		FROM
			LinqDataTypes t
	) t_1
WHERE
	t_1.c1 <> 0

