BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Sign(p."MoneyValue")
FROM
	"LinqDataTypes" p
WHERE
	Sign(p."MoneyValue") <> 0

