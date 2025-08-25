BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Value Int32
SET     @Value = 5

SELECT
	EXTRACT(MINUTE FROM (t."DateTimeValue" + :Value * INTERVAL '1' MINUTE))
FROM
	"LinqDataTypes" t

