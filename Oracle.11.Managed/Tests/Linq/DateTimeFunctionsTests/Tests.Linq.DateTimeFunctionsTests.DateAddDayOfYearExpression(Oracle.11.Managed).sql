-- Oracle.11.Managed Oracle11
DECLARE @Value Int32
SET     @Value = 3

SELECT
	TRUNC(t."DateTimeValue" + :Value * INTERVAL '1' DAY)
FROM
	"LinqDataTypes" t

