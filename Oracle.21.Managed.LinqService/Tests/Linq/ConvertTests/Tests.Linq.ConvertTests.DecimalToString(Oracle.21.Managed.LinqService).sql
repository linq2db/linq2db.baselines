BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p."MoneyValue"
FROM
	"LinqDataTypes" p
WHERE
	Length(Cast(p."MoneyValue" as VarChar(255))) > 0

