-- Oracle.11.Managed Oracle11

SELECT
	CAST((CAST((t."DateTimeValue" + 100D * INTERVAL '1' HOUR) as DATE) - CAST(t."DateTimeValue" as DATE)) * 24 AS Float)
FROM
	"LinqDataTypes" t

