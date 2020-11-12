BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(p.MoneyValue as Decimal(29, 10))
FROM
	LinqDataTypes p
WHERE
	Cast(p.MoneyValue as Decimal(29, 10)) > 0

