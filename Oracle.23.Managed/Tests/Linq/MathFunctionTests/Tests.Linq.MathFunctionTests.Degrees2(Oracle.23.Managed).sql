-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	Floor(CAST(t."MoneyValue" AS Float) * 57.295779513082323D)
FROM
	"LinqDataTypes" t
WHERE
	CAST(t."MoneyValue" AS Float) * 57.295779513082323D <> 0.10000000000000001D

