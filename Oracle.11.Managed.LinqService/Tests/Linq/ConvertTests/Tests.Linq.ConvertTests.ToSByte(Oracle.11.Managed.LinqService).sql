BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	CAST(Floor(p."MoneyValue") AS Number(3)) > 0

