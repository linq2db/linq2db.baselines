-- Oracle.11.Managed Oracle11

SELECT
	t."MoneyValue"
FROM
	"LinqDataTypes" t
WHERE
	ROUND(CAST(t."MoneyValue" AS Float)) <> 0D

