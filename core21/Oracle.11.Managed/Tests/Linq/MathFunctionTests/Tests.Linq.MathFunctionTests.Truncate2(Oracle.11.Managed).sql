BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Trunc(Cast((-p."MoneyValue") as Float), 0)
FROM
	"LinqDataTypes" p
WHERE
	Trunc(Cast((-p."MoneyValue") as Float), 0) <> 0.10000000000000001D

