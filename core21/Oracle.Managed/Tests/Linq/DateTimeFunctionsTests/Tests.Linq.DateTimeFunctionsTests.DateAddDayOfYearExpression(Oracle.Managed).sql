BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @p_1 BinaryDouble -- Double
SET     @p_1 = 3D

SELECT
	t."DateTimeValue" + :p_1 * INTERVAL '1' DAY
FROM
	"LinqDataTypes" t

