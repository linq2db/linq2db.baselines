BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Cast(t.MoneyValue as Float)
FROM
	LinqDataTypes t
WHERE
	Cast(t.MoneyValue as Float) > 0D

