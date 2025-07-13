BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	CAST(p."MoneyValue" AS Real) > 0

