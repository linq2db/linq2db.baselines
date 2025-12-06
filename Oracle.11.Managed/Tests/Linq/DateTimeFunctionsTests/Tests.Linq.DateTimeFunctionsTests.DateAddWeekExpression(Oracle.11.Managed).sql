-- Oracle.11.Managed Oracle11
DECLARE @Value Int32
SET     @Value = -1

SELECT
	TRUNC(t."DateTimeValue" + :Value * INTERVAL '7' DAY)
FROM
	"LinqDataTypes" t

