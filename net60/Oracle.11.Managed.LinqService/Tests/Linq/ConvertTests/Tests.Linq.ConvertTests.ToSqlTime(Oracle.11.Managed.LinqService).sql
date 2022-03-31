BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	Cast(To_Number(To_Char(t."DateTimeValue", 'HH24')) as VarChar(11)) || ':01:01'
FROM
	"LinqDataTypes" t

