BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	CAST(Floor(CAST(p."MoneyValue" AS Float)) AS Int) > 0

