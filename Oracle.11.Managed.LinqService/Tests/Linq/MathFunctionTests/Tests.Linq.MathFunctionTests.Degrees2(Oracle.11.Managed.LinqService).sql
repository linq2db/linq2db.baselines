BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	Floor(t.*)
FROM
	"LinqDataTypes" t
WHERE
	CAST(t."MoneyValue" AS Float) * 57.295779513082323D <> 0.10000000000000001D

