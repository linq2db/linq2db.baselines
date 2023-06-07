BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 5

SELECT
	t."DateTimeValue" + :p * INTERVAL '1' MINUTE
FROM
	"LinqDataTypes" t

