BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Floor(-(p."MoneyValue" + 1))
FROM
	"LinqDataTypes" p
WHERE
	Floor(-(p."MoneyValue" + 1)) <> 0

