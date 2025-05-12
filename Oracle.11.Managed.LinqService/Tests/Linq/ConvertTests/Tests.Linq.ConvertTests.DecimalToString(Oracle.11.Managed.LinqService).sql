BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	RTRIM(Replace(CAST(p."MoneyValue" AS VarChar(255)), CAST(',' AS VarChar(255)), CAST('.' AS VarChar(255))), '0.')
FROM
	"LinqDataTypes" p
WHERE
	Length(CAST(p."MoneyValue" AS VarChar(255))) > 0

