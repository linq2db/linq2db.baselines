BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	TRUNC(t."DateTimeValue" + 5 * INTERVAL '1' DAY)
FROM
	"LinqDataTypes" t

