BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	TO_TIMESTAMP(LPad(CAST(EXTRACT(YEAR FROM p."DateTimeValue") AS VarChar(4)), 4, '0') || '-10-01 20:35:44.000', 'YYYY-MM-DD HH24:MI:SS.FF3')
FROM
	"LinqDataTypes" p

