BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	(CAST ((t."DateTimeValue" + 100D * INTERVAL '1' MINUTE) as DATE) - CAST (t."DateTimeValue" as DATE)) * 86400
FROM
	"LinqDataTypes" t

