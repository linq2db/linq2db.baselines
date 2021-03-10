BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Round(p."MoneyValue", 0)
FROM
	"LinqDataTypes" p
WHERE
	Round(p."MoneyValue", 0) <> 0

