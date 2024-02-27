BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = -1

SELECT
	Trunc(t."DateTimeValue" + :p * INTERVAL '7' DAY, 'DD')
FROM
	"LinqDataTypes" t

