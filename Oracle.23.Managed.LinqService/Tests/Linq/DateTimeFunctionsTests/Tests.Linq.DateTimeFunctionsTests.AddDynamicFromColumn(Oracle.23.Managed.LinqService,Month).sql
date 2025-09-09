BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."DateTimeValue" + t."SmallIntValue" * INTERVAL '1' MONTH
FROM
	"LinqDataTypes" t

