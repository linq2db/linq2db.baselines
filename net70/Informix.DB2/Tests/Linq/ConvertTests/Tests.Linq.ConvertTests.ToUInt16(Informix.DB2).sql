BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(t.MoneyValue as Int)
FROM
	LinqDataTypes t
WHERE
	Cast(t.MoneyValue as Int) > 0

