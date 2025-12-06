-- Oracle.11.Managed Oracle11

SELECT
	EXTRACT(SECOND FROM (t."DateTimeValue" + -35D * INTERVAL '1' SECOND))
FROM
	"LinqDataTypes" t

