BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @p_1 BinaryDouble -- Double
SET     @p_1 = 11D

SELECT
	t."DateTimeValue" + :p_1 * INTERVAL '1' YEAR
FROM
	"LinqDataTypes" t

