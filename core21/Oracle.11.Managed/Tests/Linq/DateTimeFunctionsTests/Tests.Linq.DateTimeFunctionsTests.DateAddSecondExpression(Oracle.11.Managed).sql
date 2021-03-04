BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @p_1 BinaryDouble -- Double
SET     @p_1 = 41D

SELECT
	t."DateTimeValue" + :p_1 * INTERVAL '1' SECOND
FROM
	"LinqDataTypes" t

