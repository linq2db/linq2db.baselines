BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Round(p."MoneyValue", 1)
FROM
	"LinqDataTypes" p
WHERE
	Round(p."MoneyValue", 1) <> 0

