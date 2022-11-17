BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	To_Number(To_Char((t."DateTimeValue" + 1 * INTERVAL '1' HOUR), 'HH24'))
FROM
	"LinqDataTypes" t

