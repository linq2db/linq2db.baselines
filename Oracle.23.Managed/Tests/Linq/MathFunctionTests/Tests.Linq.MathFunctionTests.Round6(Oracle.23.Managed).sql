-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."MoneyValue"
FROM
	"LinqDataTypes" t
WHERE
	ROUND(CAST(t."MoneyValue" AS Float)) <> 0D

