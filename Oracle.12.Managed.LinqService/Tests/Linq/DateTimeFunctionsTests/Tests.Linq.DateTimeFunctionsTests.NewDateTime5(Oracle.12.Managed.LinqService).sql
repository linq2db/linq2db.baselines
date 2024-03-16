BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	To_Number(To_Char(t."DateTimeValue", 'YYYY')) + 1
FROM
	"LinqDataTypes" t

