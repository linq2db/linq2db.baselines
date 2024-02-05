BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	To_Number(To_Char((t."DateTimeValue" + 22D * INTERVAL '1' HOUR), 'HH24'))
FROM
	"LinqDataTypes" t

