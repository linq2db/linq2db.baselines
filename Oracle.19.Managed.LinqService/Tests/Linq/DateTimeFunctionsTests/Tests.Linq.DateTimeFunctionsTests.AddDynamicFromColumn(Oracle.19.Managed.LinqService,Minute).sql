BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."DateTimeValue" + t."SmallIntValue" * INTERVAL '1' MINUTE
FROM
	"LinqDataTypes" t

