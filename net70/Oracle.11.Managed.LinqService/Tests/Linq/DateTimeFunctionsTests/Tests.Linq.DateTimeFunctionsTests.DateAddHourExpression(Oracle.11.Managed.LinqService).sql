BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p_1 Int32
SET     @p_1 = 1

SELECT
	To_Number(To_Char((t."DateTimeValue" + :p_1 * INTERVAL '1' HOUR), 'HH24'))
FROM
	"LinqDataTypes" t

