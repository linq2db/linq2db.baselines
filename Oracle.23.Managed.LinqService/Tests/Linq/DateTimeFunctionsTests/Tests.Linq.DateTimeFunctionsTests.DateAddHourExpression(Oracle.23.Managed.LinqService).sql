BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 1

SELECT
	EXTRACT(HOUR FROM (t."DateTimeValue" + :p * INTERVAL '1' HOUR))
FROM
	"LinqDataTypes" t

