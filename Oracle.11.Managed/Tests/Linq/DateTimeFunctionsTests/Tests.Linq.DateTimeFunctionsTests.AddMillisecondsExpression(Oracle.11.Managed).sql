-- Oracle.11.Managed Oracle11
DECLARE @p Int32
SET     @p = 226

SELECT
	t."DateTimeValue" + :p * INTERVAL '0.001' SECOND
FROM
	"LinqDataTypes" t

-- Oracle.11.Managed Oracle11

SELECT
	t."DateTimeValue"
FROM
	"LinqDataTypes" t

