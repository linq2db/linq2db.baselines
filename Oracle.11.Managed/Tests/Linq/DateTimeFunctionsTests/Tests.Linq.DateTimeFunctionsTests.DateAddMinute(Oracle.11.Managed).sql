-- Oracle.11.Managed Oracle11

SELECT
	EXTRACT(MINUTE FROM (t."DateTimeValue" + 5 * INTERVAL '1' MINUTE))
FROM
	"LinqDataTypes" t

