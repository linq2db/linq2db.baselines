BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	CAST(p."MoneyValue" AS VarChar(255))
FROM
	"LinqDataTypes" p
WHERE
	Length(CAST(p."MoneyValue" AS VarChar(255))) > 0

