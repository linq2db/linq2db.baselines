BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	EXTRACT(HOUR FROM (t."DateTimeValue" + INTERVAL '1' HOUR))
FROM
	"LinqDataTypes" t

