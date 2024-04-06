BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = -2

SELECT
	TRUNC(t."DateTimeValue" + :p * INTERVAL '1' MONTH)
FROM
	"LinqDataTypes" t

