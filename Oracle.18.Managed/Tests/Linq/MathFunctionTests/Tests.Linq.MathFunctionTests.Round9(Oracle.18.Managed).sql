-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t."MoneyValue"
FROM
	"LinqDataTypes" t
WHERE
	ROUND(t."MoneyValue", 1) <> 0

