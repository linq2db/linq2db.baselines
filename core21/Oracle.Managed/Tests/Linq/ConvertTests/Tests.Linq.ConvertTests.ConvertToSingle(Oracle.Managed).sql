BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Cast(t.MoneyValue as Real)
FROM
	LinqDataTypes t
WHERE
	Cast(t.MoneyValue as Real) > 0

