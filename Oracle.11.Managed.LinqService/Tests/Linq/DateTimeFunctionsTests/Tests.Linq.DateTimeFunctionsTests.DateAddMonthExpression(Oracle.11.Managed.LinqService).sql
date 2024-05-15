BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 2

SELECT
	TRUNC(t."DateTimeValue" + :p * INTERVAL '1' MONTH)
FROM
	"LinqDataTypes" t

