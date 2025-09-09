BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	CAST(p."MoneyValue" AS Real) > 0

