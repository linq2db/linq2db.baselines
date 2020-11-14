BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Floor(p."MoneyValue" * 57.29577951308237993927443245)
FROM
	"LinqDataTypes" p
WHERE
	Floor(p."MoneyValue" * 57.29577951308237993927443245) <> 0.1

