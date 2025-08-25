BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t.MoneyValue
FROM
	LinqDataTypes t
WHERE
	CASE
		WHEN t.MoneyValue::Float * 2 = ROUND(t.MoneyValue::Float * 2, 1) AND t.MoneyValue::Float <> ROUND(t.MoneyValue::Float, 1)
			THEN ROUND(t.MoneyValue::Float / 2, 1) * 2
		ELSE ROUND(t.MoneyValue::Float, 1)
	END <> 0

