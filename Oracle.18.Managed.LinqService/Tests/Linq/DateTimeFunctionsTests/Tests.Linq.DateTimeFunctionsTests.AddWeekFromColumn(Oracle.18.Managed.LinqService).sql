BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	TRUNC(t."DateTimeValue" + t."SmallIntValue" * INTERVAL '7' DAY)
FROM
	"LinqDataTypes" t

