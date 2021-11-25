BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Floor(-(p."MoneyValue" + 1))
FROM
	"LinqDataTypes" p
WHERE
	Floor(-(p."MoneyValue" + 1)) <> 0

