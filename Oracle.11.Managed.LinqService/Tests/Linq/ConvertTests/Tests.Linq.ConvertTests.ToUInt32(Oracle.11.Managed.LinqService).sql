BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	CAST(Floor(p."MoneyValue") AS Number(19)) > 0

