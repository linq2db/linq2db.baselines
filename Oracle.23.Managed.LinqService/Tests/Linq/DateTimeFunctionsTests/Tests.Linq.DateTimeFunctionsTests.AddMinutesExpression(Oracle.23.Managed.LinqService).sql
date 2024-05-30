BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = -8

SELECT
	EXTRACT(MINUTE FROM (t."DateTimeValue" + :p * INTERVAL '1' MINUTE))
FROM
	"LinqDataTypes" t

