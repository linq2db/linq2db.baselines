BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	TO_DATE(Cast(To_Number(To_Char(t."DateTimeValue", 'YYYY')) as VarChar(11)) || '-10-1', 'YYYY-MM-DD')
FROM
	"LinqDataTypes" t
WHERE
	To_Number(To_Char(TO_DATE(Cast(To_Number(To_Char(t."DateTimeValue", 'YYYY')) as VarChar(11)) || '-10-1', 'YYYY-MM-DD'), 'MM')) = 10

