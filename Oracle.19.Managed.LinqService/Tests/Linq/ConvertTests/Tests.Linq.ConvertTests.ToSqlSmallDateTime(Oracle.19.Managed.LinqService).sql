BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	TO_TIMESTAMP(To_Number(To_Char(t."DateTimeValue", 'YYYY')) || '-01-01 00:20:00', 'YYYY-MM-DD HH24:MI:SS')
FROM
	"LinqDataTypes" t

