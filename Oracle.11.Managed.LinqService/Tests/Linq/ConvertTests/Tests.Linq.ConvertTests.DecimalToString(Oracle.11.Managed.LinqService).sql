BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	CAST(p."MoneyValue" AS VarChar(255))
FROM
	"LinqDataTypes" p
WHERE
	Length(CAST(p."MoneyValue" AS VarChar(255))) > 0

