-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @month Int32
SET     @month = 10

SELECT
	TO_TIMESTAMP(LPad(CAST(2010 + t.ID AS VarChar(4)), 4, '0') || '-' || LPad(CAST(:month AS VarChar(2)), 2, '0') || '-01 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF3')
FROM
	"LinqDataTypes" t

