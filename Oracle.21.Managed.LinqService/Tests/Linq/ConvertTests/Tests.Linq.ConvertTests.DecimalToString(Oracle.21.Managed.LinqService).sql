BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	RTRIM(Replace(CAST(p."MoneyValue" AS VarChar(255)), CAST(',' AS VarChar(255)), CAST('.' AS VarChar(255))), '0.')
FROM
	"LinqDataTypes" p
WHERE
	Length(CAST(p."MoneyValue" AS VarChar(255))) > 0

