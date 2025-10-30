-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Value Int32
SET     @Value = 5

SELECT
	TRUNC(t."DateTimeValue" + :Value * INTERVAL '1' DAY)
FROM
	"LinqDataTypes" t

