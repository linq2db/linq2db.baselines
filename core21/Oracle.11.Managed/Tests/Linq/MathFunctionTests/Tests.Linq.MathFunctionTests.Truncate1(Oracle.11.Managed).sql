BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Trunc(p.MoneyValue, 0)
FROM
	LinqDataTypes p
WHERE
	(Trunc(p.MoneyValue, 0) <> 0.1 OR Trunc(p.MoneyValue, 0) IS NULL)

