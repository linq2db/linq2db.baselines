BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	TRUNC(t."DateTimeValue" + t."SmallIntValue" * INTERVAL '3' MONTH)
FROM
	"LinqDataTypes" t

