BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(Floor(p.MoneyValue) as Decimal)
FROM
	LinqDataTypes p
WHERE
	Cast(Floor(p.MoneyValue) as Decimal) > 0

