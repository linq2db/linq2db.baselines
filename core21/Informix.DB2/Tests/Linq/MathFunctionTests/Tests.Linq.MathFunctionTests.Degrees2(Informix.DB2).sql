BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(t.MoneyValue as Float) * 57.295779513082323
FROM
	LinqDataTypes t
WHERE
	Cast(t.MoneyValue as Float) * 57.295779513082323 <> 0.10000000000000001

