BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	(CAST ((t."DateTimeValue" + 100D * INTERVAL '1' MINUTE) as DATE) - CAST (t."DateTimeValue" as DATE)) * 86400
FROM
	"LinqDataTypes" t

