BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t."MoneyValue"
FROM
	"LinqDataTypes" t
WHERE
	ROUND(t."MoneyValue", 1) <> 0

