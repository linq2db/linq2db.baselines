BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	TRUNC(t."DateTimeValue" + t."SmallIntValue" * INTERVAL '3' MONTH)
FROM
	"LinqDataTypes" t

