BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p.ID
FROM
	"LinqDataTypes" p
WHERE
	Length(CAST(CAST(p.ID AS Number(3)) AS VarChar(255))) > 0

