BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	CAST(p."MoneyValue" AS Real) > 0

