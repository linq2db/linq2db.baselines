BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	TRUNC(t."DateTimeValue" + 3 * INTERVAL '1' DAY)
FROM
	"LinqDataTypes" t

