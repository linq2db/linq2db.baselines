BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	CAST(CAST(Floor(t."MoneyValue") AS Int) AS Float) * 57.295779513082323D
FROM
	"LinqDataTypes" t
WHERE
	CAST(CAST(CAST(Floor(t."MoneyValue") AS Int) AS Float) * 57.295779513082323D AS Float) <> 0.10000000000000001D

