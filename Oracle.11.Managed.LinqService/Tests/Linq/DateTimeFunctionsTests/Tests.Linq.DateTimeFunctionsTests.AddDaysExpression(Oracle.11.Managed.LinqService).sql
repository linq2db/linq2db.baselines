BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @Date_1 Int32
SET     @Date_1 = 5

SELECT
	TRUNC(t."DateTimeValue" + :Date_1 * INTERVAL '1' DAY)
FROM
	"LinqDataTypes" t

