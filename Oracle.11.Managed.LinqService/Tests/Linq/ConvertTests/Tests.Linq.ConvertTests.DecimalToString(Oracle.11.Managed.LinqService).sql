BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	RTRIM(REPLACE(CAST(p."MoneyValue" AS VarChar(255)), CAST(',' AS VarChar(255)), CAST('.' AS VarChar(255))), '0.')
FROM
	"LinqDataTypes" p
WHERE
	LENGTH(CAST(p."MoneyValue" AS VarChar(255))) > 0

