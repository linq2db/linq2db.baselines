BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Ceil(-(p."MoneyValue" + 1))
FROM
	"LinqDataTypes" p
WHERE
	Ceil(-(p."MoneyValue" + 1)) <> 0

