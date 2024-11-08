BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.MoneyValue
FROM
	LinqDataTypes t
WHERE
	CASE
		WHEN t.MoneyValue::Float - FLOOR(t.MoneyValue::Float) = 0.5 AND Mod(FLOOR(t.MoneyValue::Float), 2) = 0
			THEN FLOOR(t.MoneyValue::Float)
		ELSE ROUND(t.MoneyValue::Float, 0)
	END <> 0

