BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	TRUNC(t."DateTimeValue" + 2 * INTERVAL '1' MONTH)
FROM
	"LinqDataTypes" t

