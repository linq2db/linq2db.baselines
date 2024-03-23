BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p.ID
FROM
	"LinqDataTypes" p
WHERE
	Length(Cast(Cast(p.ID as Number(3)) as VarChar(255))) > 0

