BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @p_1 Int32
SET     @p_1 = 22

SELECT
	t."DateTimeValue" + :p_1 * INTERVAL '1' HOUR
FROM
	"LinqDataTypes" t

