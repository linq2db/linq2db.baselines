-- Oracle.11.Managed Oracle11

SELECT
	CAST(p."MoneyValue" AS Float)
FROM
	"LinqDataTypes" p
WHERE
	CAST(p."MoneyValue" AS Float) > 0D

