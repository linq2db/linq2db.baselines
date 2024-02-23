BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	RTRIM(Replace(Cast(p."MoneyValue" as VarChar(255)), ',', '.'), '0.')
FROM
	"LinqDataTypes" p
WHERE
	Length(Cast(p."MoneyValue" as VarChar(255))) > 0

