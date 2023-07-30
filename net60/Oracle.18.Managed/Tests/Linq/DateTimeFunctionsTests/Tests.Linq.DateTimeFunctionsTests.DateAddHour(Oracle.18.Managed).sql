BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	To_Number(To_Char((t."DateTimeValue" + 1 * INTERVAL '1' HOUR), 'HH24'))
FROM
	"LinqDataTypes" t

