BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	CAST(Floor(CAST(p."MoneyValue" AS Float)) AS Int) > 0

