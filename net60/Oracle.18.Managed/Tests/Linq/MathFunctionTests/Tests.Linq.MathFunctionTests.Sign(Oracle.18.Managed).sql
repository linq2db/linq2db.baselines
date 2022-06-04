BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Sign(p."MoneyValue")
FROM
	"LinqDataTypes" p
WHERE
	Sign(p."MoneyValue") <> 0

