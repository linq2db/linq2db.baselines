BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Round(Cast(p."MoneyValue" as Float), 0)
FROM
	"LinqDataTypes" p
WHERE
	(Round(Cast(p."MoneyValue" as Float), 0) <> 0D OR Round(Cast(p."MoneyValue" as Float), 0) IS NULL)

