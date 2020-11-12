BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(Cast(t.MoneyValue as Int) as Float) * 57.295779513082323
FROM
	LinqDataTypes t
WHERE
	Cast((Cast(Cast(t.MoneyValue as Int) as Float) * 57.295779513082323) as Float) <> 0.10000000000000001

