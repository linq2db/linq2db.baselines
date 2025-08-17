BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @p Int32
SET     @p = 226

SELECT
	t."DateTimeValue" + :p * INTERVAL '0.001' SECOND
FROM
	"LinqDataTypes" t

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."DateTimeValue"
FROM
	"LinqDataTypes" t

