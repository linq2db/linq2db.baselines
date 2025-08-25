BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	TRUNC(t."DateTimeValue" + t."SmallIntValue" * INTERVAL '7' DAY)
FROM
	"LinqDataTypes" t

