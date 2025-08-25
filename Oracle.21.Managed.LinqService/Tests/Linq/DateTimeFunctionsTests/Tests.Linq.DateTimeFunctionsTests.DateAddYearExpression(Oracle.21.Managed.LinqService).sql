BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Value Int32
SET     @Value = 11

SELECT
	TRUNC(t."DateTimeValue" + :Value * INTERVAL '1' YEAR)
FROM
	"LinqDataTypes" t

