BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(t.MoneyValue as Real)
FROM
	LinqDataTypes t
WHERE
	Cast(t.MoneyValue as Real) > 0

