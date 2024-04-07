BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	CAST(CAST(p.ID AS Number(3)) AS VarChar(255))
FROM
	"LinqDataTypes" p
WHERE
	Length(CAST(CAST(p.ID AS Number(3)) AS VarChar(255))) > 0

