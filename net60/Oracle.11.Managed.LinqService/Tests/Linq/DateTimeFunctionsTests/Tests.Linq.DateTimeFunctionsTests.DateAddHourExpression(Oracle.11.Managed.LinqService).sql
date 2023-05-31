BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 1

SELECT
	To_Number(To_Char((t."DateTimeValue" + :p * INTERVAL '1' HOUR), 'HH24'))
FROM
	"LinqDataTypes" t

