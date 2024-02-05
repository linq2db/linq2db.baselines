BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	Trunc(p."MoneyValue", 0)
FROM
	"LinqDataTypes" p
WHERE
	Trunc(p."MoneyValue", 0) <> 0.1

