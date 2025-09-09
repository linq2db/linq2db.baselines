BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t."DateTimeValue" + t."SmallIntValue" * INTERVAL '1' DAY
FROM
	"LinqDataTypes" t

