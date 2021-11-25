BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(Cast(p.MoneyValue as Int) as Float) * 57.295779513082323
FROM
	LinqDataTypes p
WHERE
	Cast((Cast(Cast(p.MoneyValue as Int) as Float) * 57.295779513082323) as Float) <> 0.10000000000000001

