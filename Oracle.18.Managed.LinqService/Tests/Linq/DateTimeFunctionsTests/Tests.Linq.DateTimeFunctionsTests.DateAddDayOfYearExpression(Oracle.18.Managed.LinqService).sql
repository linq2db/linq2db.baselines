BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Value Int32
SET     @Value = 3

SELECT
	TRUNC(t."DateTimeValue" + :Value * INTERVAL '1' DAY)
FROM
	"LinqDataTypes" t

