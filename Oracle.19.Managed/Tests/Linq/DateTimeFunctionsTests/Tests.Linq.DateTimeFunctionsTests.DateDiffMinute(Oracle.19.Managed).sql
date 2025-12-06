-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	(CAST ((t."DateTimeValue" + 100D * INTERVAL '1' MINUTE) as DATE) - CAST (t."DateTimeValue" as DATE)) * 1440
FROM
	"LinqDataTypes" t

