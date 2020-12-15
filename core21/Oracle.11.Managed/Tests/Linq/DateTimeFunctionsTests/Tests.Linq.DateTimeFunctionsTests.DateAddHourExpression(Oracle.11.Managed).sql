BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @p_1 Int32
SET     @p_1 = 1

SELECT
	t."DateTimeValue" + :p_1 * INTERVAL '1' HOUR
FROM
	"LinqDataTypes" t

