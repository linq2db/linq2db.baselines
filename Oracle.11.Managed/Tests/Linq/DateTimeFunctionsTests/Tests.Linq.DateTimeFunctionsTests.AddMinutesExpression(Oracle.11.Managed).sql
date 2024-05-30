BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = -8

SELECT
	EXTRACT(MINUTE FROM (t."DateTimeValue" + :p * INTERVAL '1' MINUTE))
FROM
	"LinqDataTypes" t

