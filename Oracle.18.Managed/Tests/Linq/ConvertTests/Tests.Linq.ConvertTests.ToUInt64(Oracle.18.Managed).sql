BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	CAST(Floor(p."MoneyValue") AS Decimal) > 0

