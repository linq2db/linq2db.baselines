-- Oracle.11.Managed Oracle11

SELECT
	(CAST ((t."DateTimeValue" + 100D * INTERVAL '1' HOUR) as DATE) - CAST (t."DateTimeValue" as DATE)) * 24
FROM
	"LinqDataTypes" t

