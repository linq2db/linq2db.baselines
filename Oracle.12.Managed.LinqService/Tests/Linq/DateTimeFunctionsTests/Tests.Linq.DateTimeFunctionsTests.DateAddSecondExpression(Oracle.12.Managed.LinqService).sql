BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Value Int32
SET     @Value = 41

SELECT
	EXTRACT(SECOND FROM (t."DateTimeValue" + :Value * INTERVAL '1' SECOND))
FROM
	"LinqDataTypes" t

