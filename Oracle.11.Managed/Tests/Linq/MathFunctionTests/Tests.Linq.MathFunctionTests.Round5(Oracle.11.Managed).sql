BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."MoneyValue"
FROM
	"LinqDataTypes" t
WHERE
	ROUND(t."MoneyValue") <> 0

