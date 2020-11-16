BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(Cast(p.MoneyValue as Float) as Int)
FROM
	LinqDataTypes p
WHERE
	Cast(Cast(p.MoneyValue as Float) as Int) > 0

