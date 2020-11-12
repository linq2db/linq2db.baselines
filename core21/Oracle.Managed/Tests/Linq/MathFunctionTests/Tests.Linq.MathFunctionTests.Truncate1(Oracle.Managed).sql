BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Trunc(p.MoneyValue, 0)
FROM
	LinqDataTypes p
WHERE
	(Trunc(p.MoneyValue, 0) <> 0.1 OR Trunc(p.MoneyValue, 0) IS NULL)

