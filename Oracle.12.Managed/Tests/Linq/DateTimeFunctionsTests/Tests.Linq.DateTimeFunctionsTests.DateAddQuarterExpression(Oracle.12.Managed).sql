-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Value Int32
SET     @Value = -1

SELECT
	TRUNC(t."DateTimeValue" + :Value * INTERVAL '3' MONTH)
FROM
	"LinqDataTypes" t

