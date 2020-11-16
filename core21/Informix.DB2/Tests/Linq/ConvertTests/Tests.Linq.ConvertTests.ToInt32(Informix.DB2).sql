BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(p.MoneyValue as Int)
FROM
	LinqDataTypes p
WHERE
	Cast(p.MoneyValue as Int) > 0

