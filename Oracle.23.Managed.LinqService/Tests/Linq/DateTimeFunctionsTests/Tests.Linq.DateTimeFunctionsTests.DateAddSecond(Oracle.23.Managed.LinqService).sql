BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	To_Number(To_Char((t."DateTimeValue" + 41 * INTERVAL '1' SECOND), 'SS'))
FROM
	"LinqDataTypes" t

