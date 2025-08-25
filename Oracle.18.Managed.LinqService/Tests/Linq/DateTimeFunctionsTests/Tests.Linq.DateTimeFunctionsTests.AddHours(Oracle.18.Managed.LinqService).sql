BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	EXTRACT(HOUR FROM (t."DateTimeValue" + 22D * INTERVAL '1' HOUR))
FROM
	"LinqDataTypes" t

