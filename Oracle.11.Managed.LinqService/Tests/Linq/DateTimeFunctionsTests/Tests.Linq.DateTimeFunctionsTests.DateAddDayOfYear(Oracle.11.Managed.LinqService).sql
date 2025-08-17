BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	TRUNC(t."DateTimeValue" + 3 * INTERVAL '1' DAY)
FROM
	"LinqDataTypes" t

