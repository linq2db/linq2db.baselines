-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	CAST(Floor(p."MoneyValue") AS Number(3)) > 0

