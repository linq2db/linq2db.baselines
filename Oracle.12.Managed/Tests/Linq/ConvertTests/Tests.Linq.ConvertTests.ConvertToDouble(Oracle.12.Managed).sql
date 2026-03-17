-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	CAST(p."MoneyValue" AS Float)
FROM
	"LinqDataTypes" p
WHERE
	CAST(p."MoneyValue" AS Float) > 0D

