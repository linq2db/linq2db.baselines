-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	CAST((CAST ((t."DateTimeValue" + 100D * INTERVAL '1' HOUR) as DATE) - CAST (t."DateTimeValue" as DATE)) * 24 AS Float)
FROM
	"LinqDataTypes" t

