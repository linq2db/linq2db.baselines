BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 5

SELECT
	Trunc(t."DateTimeValue" + :p * INTERVAL '1' DAY, 'DD')
FROM
	"LinqDataTypes" t

