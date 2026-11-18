-- Oracle.11.Managed Oracle11
DECLARE @Value Int32
SET     @Value = 41

SELECT
	EXTRACT(SECOND FROM (t."DateTimeValue" + :Value * INTERVAL '1' SECOND))
FROM
	"LinqDataTypes" t

