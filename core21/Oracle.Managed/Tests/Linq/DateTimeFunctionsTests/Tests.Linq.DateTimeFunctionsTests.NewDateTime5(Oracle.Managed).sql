BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	TO_DATE(Cast((To_Number(To_Char(p."DateTimeValue", 'YYYY')) + 1) as VarChar(11)) || '-10-1', 'YYYY-MM-DD')
FROM
	"LinqDataTypes" p
WHERE
	To_Number(To_Char(TO_DATE(Cast((To_Number(To_Char(p."DateTimeValue", 'YYYY')) + 1) as VarChar(11)) || '-10-1', 'YYYY-MM-DD'), 'MM')) = 10

