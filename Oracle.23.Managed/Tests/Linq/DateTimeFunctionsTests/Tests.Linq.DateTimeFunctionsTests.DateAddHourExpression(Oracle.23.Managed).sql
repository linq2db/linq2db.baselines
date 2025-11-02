-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Value Int32
SET     @Value = 1

SELECT
	EXTRACT(HOUR FROM (t."DateTimeValue" + :Value * INTERVAL '1' HOUR))
FROM
	"LinqDataTypes" t

