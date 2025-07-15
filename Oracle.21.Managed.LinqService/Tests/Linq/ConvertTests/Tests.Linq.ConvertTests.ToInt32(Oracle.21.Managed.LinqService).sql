BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	CAST(Floor(p."MoneyValue") AS Int) > 0

