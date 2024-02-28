BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	MOD(To_Number(To_Char(t."DateTimeValue", 'HH24')), 7)
FROM
	"LinqDataTypes" t

