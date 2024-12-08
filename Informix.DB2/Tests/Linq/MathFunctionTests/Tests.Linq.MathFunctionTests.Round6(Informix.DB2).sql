BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.MoneyValue
FROM
	LinqDataTypes t
WHERE
	ROUND(t.MoneyValue::Float) <> 0

