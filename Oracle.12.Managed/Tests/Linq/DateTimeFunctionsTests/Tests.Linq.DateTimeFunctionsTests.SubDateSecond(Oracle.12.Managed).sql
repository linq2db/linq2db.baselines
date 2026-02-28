-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	CAST((CAST((t."DateTimeValue" + 100D * INTERVAL '1' MINUTE) as DATE) - CAST(t."DateTimeValue" as DATE)) * 86400 AS Float)
FROM
	"LinqDataTypes" t

