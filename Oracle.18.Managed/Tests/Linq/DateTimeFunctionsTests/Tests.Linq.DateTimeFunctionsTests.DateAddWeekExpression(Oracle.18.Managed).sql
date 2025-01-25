BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = -1

SELECT
	TRUNC(t."DateTimeValue" + :p * INTERVAL '7' DAY)
FROM
	"LinqDataTypes" t

