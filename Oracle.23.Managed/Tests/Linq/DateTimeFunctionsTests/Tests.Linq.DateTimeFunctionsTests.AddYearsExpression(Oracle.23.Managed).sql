BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 1

SELECT
	Trunc(t."DateTimeValue" + :p * INTERVAL '1' YEAR, 'DD')
FROM
	"LinqDataTypes" t

