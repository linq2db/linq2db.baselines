BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	TO_TIMESTAMP(Cast(To_Number(To_Char(t."DateTimeValue", 'YYYY')) as VarChar(11)) || '-10-1 20:35:44', 'YYYY-MM-DD HH24:MI:SS')
FROM
	"LinqDataTypes" t
WHERE
	To_Number(To_Char(TO_TIMESTAMP(Cast(To_Number(To_Char(t."DateTimeValue", 'YYYY')) as VarChar(11)) || '-10-1 20:35:44', 'YYYY-MM-DD HH24:MI:SS'), 'MM')) = 10

