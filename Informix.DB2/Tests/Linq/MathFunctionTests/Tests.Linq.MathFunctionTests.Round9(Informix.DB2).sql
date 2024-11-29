BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.MoneyValue
FROM
	LinqDataTypes t
WHERE
	ROUND(t.MoneyValue, 1) <> 0

