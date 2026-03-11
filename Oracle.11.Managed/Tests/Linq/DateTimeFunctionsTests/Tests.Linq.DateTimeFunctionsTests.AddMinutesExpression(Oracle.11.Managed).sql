-- Oracle.11.Managed Oracle11
DECLARE @Minute Int32
SET     @Minute = -8

SELECT
	EXTRACT(MINUTE FROM (t."DateTimeValue" + :Minute * INTERVAL '1' MINUTE))
FROM
	"LinqDataTypes" t

