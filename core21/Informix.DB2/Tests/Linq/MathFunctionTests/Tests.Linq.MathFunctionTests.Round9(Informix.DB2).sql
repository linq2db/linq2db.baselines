BeforeExecute
-- Informix.DB2 Informix

SELECT
	Round(t.MoneyValue, 1)
FROM
	LinqDataTypes t
WHERE
	Round(t.MoneyValue, 1) <> 0

