BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	EXTRACT(HOUR FROM (t."DateTimeValue" + 22D * INTERVAL '1' HOUR))
FROM
	"LinqDataTypes" t

