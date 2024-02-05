BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	Trunc(p."MoneyValue", 0)
FROM
	"LinqDataTypes" p
WHERE
	Trunc(p."MoneyValue", 0) <> 0.1

