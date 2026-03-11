-- Oracle.11.Managed Oracle11

SELECT
	EXTRACT(MINUTE FROM (t."DateTimeValue" + -8D * INTERVAL '1' MINUTE))
FROM
	"LinqDataTypes" t

