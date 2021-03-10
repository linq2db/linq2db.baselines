BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Ceil(-(p."MoneyValue" + 1))
FROM
	"LinqDataTypes" p
WHERE
	Ceil(-(p."MoneyValue" + 1)) <> 0

