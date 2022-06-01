BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	MOD(To_Number(To_Char(t."DateTimeValue", 'YYYY')), 7)
FROM
	"LinqDataTypes" t

