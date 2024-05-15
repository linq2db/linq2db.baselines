BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 22

SELECT
	EXTRACT(HOUR FROM (t."DateTimeValue" + :p * INTERVAL '1' HOUR))
FROM
	"LinqDataTypes" t

