BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(p.MoneyValue as Real)
FROM
	LinqDataTypes p
WHERE
	Cast(p.MoneyValue as Real) > 0

