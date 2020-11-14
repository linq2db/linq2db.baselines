BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Round(t."MoneyValue", 1)
FROM
	"LinqDataTypes" t
WHERE
	Round(t."MoneyValue", 1) <> 0

