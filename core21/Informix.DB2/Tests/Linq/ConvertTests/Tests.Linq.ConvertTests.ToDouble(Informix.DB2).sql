BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(Cast(t.MoneyValue as Float) as Int)
FROM
	LinqDataTypes t
WHERE
	Cast(Cast(t.MoneyValue as Float) as Int) > 0

