BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	TRUNC(t."DateTimeValue" + -2 * INTERVAL '1' MONTH)
FROM
	"LinqDataTypes" t

