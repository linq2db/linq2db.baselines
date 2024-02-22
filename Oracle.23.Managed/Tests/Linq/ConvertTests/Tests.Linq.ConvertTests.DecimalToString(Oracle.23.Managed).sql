BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	RTRIM(Replace(Cast(p."MoneyValue" as VarChar(255)), ',', '.'), '0.')
FROM
	"LinqDataTypes" p
WHERE
	Length(Cast(p."MoneyValue" as VarChar(255))) > 0

