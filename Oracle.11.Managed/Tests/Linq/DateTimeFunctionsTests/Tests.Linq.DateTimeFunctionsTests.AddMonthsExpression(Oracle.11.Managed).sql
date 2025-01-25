BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Date_1 Int32
SET     @Date_1 = -2

SELECT
	TRUNC(t."DateTimeValue" + :Date_1 * INTERVAL '1' MONTH)
FROM
	"LinqDataTypes" t

