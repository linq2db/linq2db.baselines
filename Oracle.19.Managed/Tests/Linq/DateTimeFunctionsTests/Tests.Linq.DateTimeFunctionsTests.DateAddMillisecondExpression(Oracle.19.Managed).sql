-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 226

SELECT
	t."DateTimeValue" + :p * INTERVAL '0.001' SECOND
FROM
	"LinqDataTypes" t

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."DateTimeValue"
FROM
	"LinqDataTypes" t

