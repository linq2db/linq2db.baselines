BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Minute Int32
SET     @Minute = -8

SELECT
	EXTRACT(MINUTE FROM (t."DateTimeValue" + :Minute * INTERVAL '1' MINUTE))
FROM
	"LinqDataTypes" t

