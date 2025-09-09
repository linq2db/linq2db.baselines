BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	TRUNC(t."DateTimeValue" + t."SmallIntValue" * INTERVAL '7' DAY)
FROM
	"LinqDataTypes" t

