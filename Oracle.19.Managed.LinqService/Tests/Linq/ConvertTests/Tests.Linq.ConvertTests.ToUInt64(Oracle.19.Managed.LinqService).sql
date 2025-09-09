BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	CAST(Floor(p."MoneyValue") AS Decimal) > 0

