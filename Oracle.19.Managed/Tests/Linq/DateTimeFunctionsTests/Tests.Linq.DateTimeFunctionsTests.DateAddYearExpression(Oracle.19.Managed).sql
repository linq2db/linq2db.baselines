BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 11

SELECT
	TRUNC(t."DateTimeValue" + :p * INTERVAL '1' YEAR)
FROM
	"LinqDataTypes" t

