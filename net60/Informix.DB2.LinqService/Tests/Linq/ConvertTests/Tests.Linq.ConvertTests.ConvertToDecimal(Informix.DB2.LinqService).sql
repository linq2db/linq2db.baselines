BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(t.MoneyValue as Decimal)
FROM
	LinqDataTypes t
WHERE
	Cast(t.MoneyValue as Decimal) > 0

