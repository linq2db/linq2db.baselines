BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 22

SELECT
	EXTRACT(HOUR FROM (t."DateTimeValue" + :p * INTERVAL '1' HOUR))
FROM
	"LinqDataTypes" t

