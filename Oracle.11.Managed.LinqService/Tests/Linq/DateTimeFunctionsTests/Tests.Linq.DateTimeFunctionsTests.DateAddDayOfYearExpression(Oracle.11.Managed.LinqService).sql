BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 3

SELECT
	TRUNC(t."DateTimeValue" + :p * INTERVAL '1' DAY)
FROM
	"LinqDataTypes" t

