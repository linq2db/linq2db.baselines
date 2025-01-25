BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @year Int32
SET     @year = 2010

SELECT
	TO_TIMESTAMP(LPad(CAST(:year AS VarChar(4)), 4, '0') || '-' || LPad(CAST(t.ID AS VarChar(2)), 2, '0') || '-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF3')
FROM
	"LinqDataTypes" t
WHERE
	EXTRACT(YEAR FROM TO_TIMESTAMP(LPad(CAST(:year AS VarChar(4)), 4, '0') || '-' || LPad(CAST(t.ID AS VarChar(2)), 2, '0') || '-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF3')) = 2010

