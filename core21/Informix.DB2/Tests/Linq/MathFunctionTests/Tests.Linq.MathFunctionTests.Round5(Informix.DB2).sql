BeforeExecute
-- Informix.DB2 Informix

SELECT
	Round(t.MoneyValue, 0)
FROM
	LinqDataTypes t
WHERE
	Round(t.MoneyValue, 0) <> 0

