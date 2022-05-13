BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	Cast(t."MoneyValue" as Real)
FROM
	"LinqDataTypes" t
WHERE
	Cast(t."MoneyValue" as Real) > 0

