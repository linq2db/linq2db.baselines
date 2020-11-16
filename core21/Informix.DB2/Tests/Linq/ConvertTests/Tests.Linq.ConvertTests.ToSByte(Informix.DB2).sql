BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(p.MoneyValue as SmallInt)
FROM
	LinqDataTypes p
WHERE
	Cast(p.MoneyValue as SmallInt) > 0

