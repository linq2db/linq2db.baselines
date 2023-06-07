BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 11

SELECT
	t."DateTimeValue" + :p * INTERVAL '1' YEAR
FROM
	"LinqDataTypes" t

