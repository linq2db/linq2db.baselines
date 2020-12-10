BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @p_1 Int32
SET     @p_1 = 5

SELECT
	t."DateTimeValue" + :p_1 * INTERVAL '1' MINUTE
FROM
	"LinqDataTypes" t

