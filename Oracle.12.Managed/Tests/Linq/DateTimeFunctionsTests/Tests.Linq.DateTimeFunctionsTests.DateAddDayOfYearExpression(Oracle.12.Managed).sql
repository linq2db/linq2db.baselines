BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 3

SELECT
	Trunc(t."DateTimeValue" + :p * INTERVAL '1' DAY, 'DD')
FROM
	"LinqDataTypes" t

