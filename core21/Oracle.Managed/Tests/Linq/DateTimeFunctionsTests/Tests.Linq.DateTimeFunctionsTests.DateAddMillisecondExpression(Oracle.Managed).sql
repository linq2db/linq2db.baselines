BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @p_1 BinaryDouble -- Double
SET     @p_1 = 226D

SELECT
	t."DateTimeValue" + :p_1 * INTERVAL '0.001' SECOND
FROM
	"LinqDataTypes" t

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t."DateTimeValue"
FROM
	"LinqDataTypes" t

