BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	TO_DATE(To_Number(To_Char(t."DateTimeValue", 'YYYY')) || '-01-01', 'YYYY-MM-DD')
FROM
	"LinqDataTypes" t

