BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = -1

SELECT
	TRUNC(t."DateTimeValue" + :p * INTERVAL '3' MONTH)
FROM
	"LinqDataTypes" t

