BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = -2

SELECT
	Trunc(t."DateTimeValue" + :p * INTERVAL '1' MONTH, 'DD')
FROM
	"LinqDataTypes" t

