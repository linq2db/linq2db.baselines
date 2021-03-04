BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @p_1 BinaryDouble -- Double
SET     @p_1 = -1D

SELECT
	t."DateTimeValue" + :p_1 * INTERVAL '3' MONTH
FROM
	"LinqDataTypes" t

