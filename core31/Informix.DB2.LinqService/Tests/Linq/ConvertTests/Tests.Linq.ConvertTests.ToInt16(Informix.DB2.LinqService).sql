BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(t.MoneyValue as SmallInt)
FROM
	LinqDataTypes t
WHERE
	Cast(t.MoneyValue as SmallInt) > 0

