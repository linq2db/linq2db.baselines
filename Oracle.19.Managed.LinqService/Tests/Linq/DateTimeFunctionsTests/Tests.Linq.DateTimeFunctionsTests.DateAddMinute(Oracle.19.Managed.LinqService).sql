BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	EXTRACT(MINUTE FROM (t."DateTimeValue" + 5 * INTERVAL '1' MINUTE))
FROM
	"LinqDataTypes" t

