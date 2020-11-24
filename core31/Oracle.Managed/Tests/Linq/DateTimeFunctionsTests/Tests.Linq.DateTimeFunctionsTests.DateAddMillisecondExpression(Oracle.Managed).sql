BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @p1 Int32
SET     @p1 = 226

SELECT
	t."DateTimeValue" + :p1 * INTERVAL '0.001' SECOND
FROM
	"LinqDataTypes" t

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t."DateTimeValue"
FROM
	"LinqDataTypes" t

