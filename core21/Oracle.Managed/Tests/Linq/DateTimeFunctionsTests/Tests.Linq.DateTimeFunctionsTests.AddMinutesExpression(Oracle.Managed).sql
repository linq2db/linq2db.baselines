BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @p_1 BinaryDouble -- Double
SET     @p_1 = -8D

SELECT
	t."DateTimeValue" + :p_1 * INTERVAL '1' MINUTE
FROM
	"LinqDataTypes" t

