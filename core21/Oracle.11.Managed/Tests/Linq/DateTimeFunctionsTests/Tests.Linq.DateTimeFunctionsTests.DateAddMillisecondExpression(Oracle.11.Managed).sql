BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @p_1 BinaryDouble -- Double
SET     @p_1 = 226D

SELECT
	t."DateTimeValue" + :p_1 * INTERVAL '0.001' SECOND
FROM
	"LinqDataTypes" t

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t."DateTimeValue"
FROM
	"LinqDataTypes" t

